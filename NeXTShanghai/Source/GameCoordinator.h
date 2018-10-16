
/*
 * This object is the heart of the game.
 *	Many of the standard GUI interface calls pass 
 *	through a translation object and forwarded to this object.
 *
 * This is a rather large object.  It has to coordinate many
 *	functions.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"BoardScramble.h"
#import	"GameTileArray.h"
#import	"Help.h"
#import	"IntegerList.h"
#import	"TileCountManager.h"
#import	"TileDescriptionArray.h"


#import	<AppKit/AppKit.h>

#import	"GameBoardView.h"

class GameCoordinator {
private:
												// This flag is used by the updateView()
												//	method.  It is cleared at the begining 
												//	of a constructor and set as the constructor's
												//	last statement.
												// This flag prevents the updateView() from
												//	forcing the display of the tiles.  During
												//	dearchiving of the code the constructor
												//	proves to be a bad place for the
												//	-display method to be sent to the Game
												//	Board view.
	BOOL					initialized;
												// This is the Game Board's view.  It is
												//	passed in the constructor.  
												// Whenever a tile is changed the view is 
												//	marked needs display.
												// When a drawImage() is received from the
												//	interface object (by virtue of the view
												//	receiving a drawSelf:: method) the 
												//	tiles are composited on this view.
	GameBoardView*			my_view;
												// This method updates the view with
												//	the current count.
	void					updateView( void );
public:
												// This method comes from the interface
												//	object and from there the Game Board's
												//	view.  It is called when the view
												//	receives a drawSelf:: method.
	void					drawImage( void );
												// These methods comes from the interface
												//	object when the mouse is clicked
												//	in the Game Board's view.  
												// As tiles are clicked they are selected
												//	for removal.  A double click on a selected
												//	set completes the removal.
	void					click( NSPoint ),
							doubleClick( NSPoint );
private:
												// This method is used by the click methods
												//	to return an index into the tile array
												//	to a tile that corresponds to a point
												//	on the Game Board.  This method returns
												//	-1 if no tile is found.
	int						tileForClick( NSPoint );
						
private:
												// This is another object passed in the
												//	constructor.  It is an object that
												//	displays the number of tiles
												//	remaining on the Game Board.  
	TileCountManager*		tile_count_manager;

private:	
												// This object is used to scramble the
												//	Game Board's tiles.
	BoardScramble			scrambler;
												// This is the array of Game Tiles.  When
												//	a game is started this array is scrambled
												//	and its tiles painted on the game board.
	GameTileArray			tile_array;
												// This member function does some house
												//	keeping to prepare the tiles for a new
												//	game.
	void					prepareTilesForPlay( void );
												// Scan through the tiles and make
												//	tiles selectable based upon surrounding
												//	tiles' state.
	void					updateSelectablilty( void );
												// While tile locations change the positions
												//	on the board do not.  Therefore there is
												//	a description for each fixed location.
	TileDescriptionArray	description_array;
												// Tests to see if a tile is
												//	covered or free on its right or
												//	left side.
	BOOL					isFree( IntegerList& );
	BOOL isCovered( int tile ) {
	
		
		return !isFree( description_array[ tile ]->coveredList());
	}
	BOOL isRightFree( int tile ) {
	
		
		return isFree( description_array[ tile ]->rightList());
	}

	BOOL isLeftFree( int tile ) {
	
		
		return isFree( description_array[ tile ]->leftList());
	}

	
private:
												// When the help button is clicked this
												//	object performs the help magic.
	Help					help;
public:
												// This method is called by the interface
												//	object when the help button is clicked.
												//	See the documentation on the Help 
												//	object for more detail.
	void					helpClick( void );

private:
												// As objects are removed from the board
												//	they are placed on this list (in pairs)
												//	such that the undo button will unremove
												//	them.
	IntegerList					undoList;
												// This method removes a tile from the Game
												//	Board, places them on the undo list,
												//	and updates the attributes of its
												//	surrounding tiules.
	void					removeTile( int );
public:
												// This method is called by the interface
												//	object when the undo button is clicked.
												//	This method will removed the a tile set
												//	from the undo list and unremove them.
												// The information stored is stored by an
												//	integer pair of indexes into the tile
												//	array.
	void					undoClick( void );

private:
												// These two variables hold the first and
												//	second tiles selected for removal.
												// A value of -1 indicates the tile isn't
												//	selected.
	int						first_selected_tile, second_selected_tile;
												// This method marks all tiles as 
												//	unselected.
	void					unselectTiles( void );
												// This method returns a tile number
												//	of a tile at the passed point on the
												//	game board.  The returned value is a
												//	index into tile_array.  This function
												//	will return -1 if no tile is found
												//	at the point.
	int						findTileForPoint( NSPoint );

public:
												// These methods are called by the interface
												//	object when the Again and New buttons
												//	are clicked respectivly. 
												// Those buttons start either the previous 
												//	game again or a new game.
	void					againClick( void ),
							newClick( void );
public:
	GameCoordinator( GameBoardView*, TileCountManager* );

};

