
/*
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameCoordinator.h"
#import	"Tile.h"
#import	"TileIterator.h"

#include <cassert>
#include <cstring>

extern int NXArgc;
extern char **NXArgv;

GameCoordinator::GameCoordinator( GameBoardView* view, TileCountManager* manager ) {

	int		board_num = -1;
	
	
	initialized = NO;
	
	assert( view );
	my_view = view;
	assert( manager );
	tile_count_manager = manager;
	
	// Scan the command line and look
	//	for an optional board number.  The
	//	board number is a seed to the random
	//	number generator.
	for( int i = 0; i < NXArgc; ++i )
		if( !strncmp( NXArgv[ i ], "-b", strlen( "-b" )))
			if(( i + 1 ) < NXArgc ) {
				board_num = atoi( NXArgv[ i + 1 ] );
				board_num %= 20011;
			}

	// Scramble the tiles on the game
	//	board.
	if( board_num == -1 )
		scrambler.scramble( tile_array );
	else
		scrambler.scramble( board_num, tile_array );
	
	// Prepare the tiles for
	//	a the game.
	prepareTilesForPlay();
	
	// All tiles are unselected in their
	//	constructor but this method does
	//	some additional work.
	unselectTiles();
	
	// All tiles are placed on the board.
	tile_count_manager->resetCount();
	
	// Insure the view is dirty so that
	//	it'll be displayed when the window
	//	is exposed.
	updateView();

	initialized = YES;
}


void GameCoordinator::updateView( void ) {


	[ my_view setNeedsDisplay:YES ];
	if( initialized )
		[ my_view display]; // FromOpaqueAncestor:0 :0 :NO ];
}


void GameCoordinator::drawImage( void ) {

	BOOL didDrawTouchedTiles = NO;
	NSPoint backgroundOrigin;
	NSPoint aPoint;
	NSRect	aClipRect;
	NSPoint checkPoint;
	NSRect	checkClipRect;
	
	//assert([ my_view isFocusView ]);
	// Have each tile that is marked as
	//	not removed to draw itself on the
	//	Game Board.
											
	// Here we will perform a very simple drawing optimization.
	// It could be done a lot more efficient but this would require more
	// core changes which might result in a complete redesign of this old code.
	// Sorry.
	
	// If there are tiles which are marked as "touched" then we will just redraw their areas
	// The backgrounds origin was calculated for the current NIB setup
	// since it has to reflect the differences between the coordinate
	// systems of the two views.
	// Sorry..this is not really cool. I could do something like [myView - superview coords]
	// but that wouldn't make the overall code any better :-(
	
	backgroundOrigin.x = -8;
	backgroundOrigin.y = -22;
	

	for( int i = 0; i < tile_array.size(); ++i )
	{
		if( tile_array[ i ].gotTouched() )
		{
			aPoint = description_array[ i ]->tileLocation();
			
			aClipRect.origin = aPoint;
			aClipRect.size.width = TILE_WIDTH_WITH_SHADOW;
			aClipRect.size.height = TILE_HEIGHT;
			
			// Make sure the clipping will work for more tiles !
			
            [NSGraphicsContext saveGraphicsState];
            [[NSBezierPath bezierPathWithRect:aClipRect] setClip];

			// Draw the background is correct. This really is dirty, dirty, dirty !!!

			[[NSImage imageNamed:@"Background"] drawAtPoint:backgroundOrigin fromRect:NSZeroRect operation:NSCompositingOperationCopy fraction:1];
			
			
			// Now draw all the tiles which are necessary for the right layering
			// This affects the visible and which somehow intersect with the tiles region. 
			
			for( int t = 0; t < tile_array.size(); ++t )
				if( !tile_array[ t ].isRemoved() )
				{
					checkPoint = description_array[ t ]->tileLocation();
			
					checkClipRect.origin = checkPoint;
					checkClipRect.size.width = TILE_WIDTH_WITH_SHADOW;
					checkClipRect.size.height = TILE_HEIGHT;

					if( NSIntersectsRect( aClipRect, checkClipRect ))
						tile_array[ t ].drawImage( checkPoint );
				}
			tile_array[ i ].markTouched( NO );	
			didDrawTouchedTiles = YES;
			
			// Get the WindowServer where we want it to be again
			
            [NSGraphicsContext restoreGraphicsState];
		}
	}
	
	// If we did not redraw any single tiles then if might be about time to redraw the 
	// whole board.
	
	if( !didDrawTouchedTiles )
	{
		[[NSImage imageNamed:@"Background"] drawAtPoint:backgroundOrigin fromRect:NSZeroRect operation:NSCompositingOperationCopy fraction:1];
	
		for( int i = 0; i < tile_array.size(); ++i )
			if( !tile_array[ i ].isRemoved())
				tile_array[ i ].drawImage( description_array[ i ]->tileLocation());
	}
}


void GameCoordinator::helpClick( void ) {

	// BUG: Tiles selected by the help'object ar not removable by a double click !
	// You have to manually select them.
	// I did not look into that but I suspect that the first & seconed_selected
	// ivars do not reflect the state of the selected objects.

	unselectTiles();
	help.helpClick( tile_array );
	updateView();
}


void GameCoordinator::undoClick( void ) {
	
	
	assert(( undoList.count() % 2 ) == 0 );
	
	help.resetHelp();
	
	// If there are two tiles on the undo
	//	list then mark them as not removed,
	//	redraw the board, and mark all
	//	tiles as not selected.
	if( undoList.count()) {
		
		for( int i = 0; i < 2; ++i ) {
			int	tile = undoList.lastValue();
			
			tile_array[ tile ].setRemoved( NO );
			tile_array[ tile ].markTouched( YES );
			
			undoList -= tile;
		}
		
		updateSelectablilty();
		
		tile_count_manager->addTwo();
	} else
		NSBeep();
	
	unselectTiles();
	updateView();
}


void GameCoordinator::unselectTiles( void ) {


	for( int i = 0; i < tile_array.size(); ++i )
	{
		if( tile_array[ i ].isSelected() )
		{
			tile_array[ i ].setSelected( NO );
			tile_array[ i ].markTouched( YES );
		}
	}
	
	first_selected_tile		=
	second_selected_tile	= -1;

	updateView();
}


void GameCoordinator::againClick( void ) {
	// Again means to play the same tile
	//	scramble again.
	help.resetHelp();
	prepareTilesForPlay();
	undoList.empty();
	unselectTiles();
	updateView();
	
	tile_count_manager->resetCount();
}



void GameCoordinator::newClick( void ) {
	// Scramble the tiles and start
	//	a new game.
	scrambler.scramble( tile_array );
	undoList.empty();
	help.resetHelp();
	unselectTiles();
	prepareTilesForPlay();
	updateView();
	
	tile_count_manager->resetCount();
}

void GameCoordinator::prepareTilesForPlay( void ) {
	int	i;
	
	
	// Set all tiles to a default
	//	state.
	for( i = 0; i < tile_array.size(); ++i ) {
		tile_array[ i ].setRemoved( NO );
		tile_array[ i ].setSelected( NO );
		tile_array[ i ].setSelectable( NO );
		tile_array[ i ].markTouched( NO );
	}
	
	updateSelectablilty();
}


void GameCoordinator::updateSelectablilty( void ) {
	
	
	// Any tile that is free on either its
	//	left or right and isn't covered
	//	is selectable
	for( int i = 0; i < tile_array.size(); ++i ) {
		BOOL	selectable = NO;
		
		if( !tile_array[ i ].isRemoved()) {
			if( !isCovered( i )) {
				if( isRightFree( i ) || isLeftFree( i )) {
					selectable = YES;
				}
			}
		}
		
		tile_array[ i ].setSelectable( selectable );
	}
}


BOOL GameCoordinator::isFree( IntegerList& list ) {
	BOOL	is_free = YES;
	int		i;
	
	
	list.beginIterate();
	while(( i = list()) != -1 ) {
		if( !tile_array[ i ].isRemoved()) {
			is_free = NO;
		}
	}
	
	return is_free;
}


void GameCoordinator::click( NSPoint aPoint ) {
	int	theTile = tileForClick( aPoint );
	
	
	// Any click on the Game Board resets
	//	Help.
	if( help.isSelected())
		unselectTiles();
	help.resetHelp();
	
	if( theTile != -1 ) {
		if( tile_array[ theTile ].isSelectable()) {
			
			// If the tile is being unselected
			//	the unselect it.
			if( theTile == first_selected_tile ) {
				tile_array[ first_selected_tile ].setSelected( NO );
				tile_array[ first_selected_tile ].markTouched( YES );
				first_selected_tile = -1;
			} else
				if( theTile == second_selected_tile ) {
					tile_array[ second_selected_tile ].setSelected( NO );
					tile_array[ second_selected_tile ].markTouched( YES );
					second_selected_tile = -1;
				} else
					// If tile isn't selected then
					//	this tile is selected.
					if( first_selected_tile == -1 ) {
						tile_array[ theTile ].setSelected( YES );
						tile_array[ theTile ].markTouched( YES );
						first_selected_tile = theTile;
					} else
						if( second_selected_tile == -1 ) {
							tile_array[ theTile ].setSelected( YES );
							tile_array[ theTile ].markTouched( YES );
							second_selected_tile = theTile;
						}
			
			// If there are two tiles selected which don't share the same type...
			// then the first tile gets unselected again and our second tile becomes
			// the first.
			// This makes refocusing on a different tile possible with a single click
			
			if(( first_selected_tile != -1 ) && ( second_selected_tile != -1 ))
				if( tile_array[ first_selected_tile ].tileType() !=
				   tile_array[ second_selected_tile ].tileType())
				{
					tile_array[ first_selected_tile ].setSelected( NO );
					tile_array[ first_selected_tile ].markTouched( YES );
					first_selected_tile = second_selected_tile;
					second_selected_tile = -1;
				}
			
			updateView();
		} else
			NSBeep();
	} else
		NSBeep();
}


void GameCoordinator::doubleClick( NSPoint aPoint ) {
	int	theTile = tileForClick( aPoint );
	
	if( theTile != -1 ) {
		if( tile_array[ theTile ].isSelectable()) {
			
			// if there isn't two tiles selected then
			//	try to select the tile double clicked.
			if(( first_selected_tile == -1 ) || ( second_selected_tile == -1 ))
				click( aPoint );
			// There must be two tiles
			//	selected.
			if(( first_selected_tile != -1 ) && ( second_selected_tile != -1 )) {
				
				// Remove the tiles from the
				//	board and update the selectability
				//	of the surrounding tiles.
				assert( tile_array[ first_selected_tile ].tileType() == tile_array[ second_selected_tile ].tileType());
				removeTile( first_selected_tile );
				removeTile( second_selected_tile );
				tile_count_manager->subtractTwo();
				
				unselectTiles();
			} else
				NSBeep();
		} else
			NSBeep();
	} else
		NSBeep();
}


int GameCoordinator::tileForClick( NSPoint aPoint ) {
	TileIterator	index = ( NUMBER_OF_TILES - 1 );
	int				theTile = -1;
	
	do {
		if( !tile_array[ index.value() ].isRemoved()) {
			NSRect	r = {	0, 0,
				TILE_WIDTH - TILE_SHIFT, TILE_HEIGHT - TILE_SHIFT };
			
			r.origin = description_array[ index.value() ]->tileLocation();
			if( NSPointInRect( aPoint, r ))
				theTile = index.value();
		}
	} while(( theTile == -1 ) && ( --index >= 0 ));
	
	return theTile;
}


void GameCoordinator::removeTile( int tile ) {
	undoList += tile;
	
	// romoving a tile definitly marks it as touched...
	
	tile_array[ tile ].setRemoved( YES );
	tile_array[ tile ].setSelected( NO );
	tile_array[ tile ].setSelectable( NO );
	tile_array[ tile ].markTouched( YES );
	
	updateSelectablilty();
}
