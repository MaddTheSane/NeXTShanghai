
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"Help.h"

#import <AppKit/AppKit.h>
#include <cassert>

extern "C" {
#include "mj.h"
}


void Help::resetHelp( void ) {
	my_iterator = 0;
	tiles_selected = NO;
}

void Help::helpClick( GameTileArray& board ) {
	int		start_tile = findNextSelectableTile( board );
	
	if (start_tile != -1) {
		BOOL			match_found = NO;
		TileIterator	search_iterator;
		// Find a matching tile.
		do {
			int	stop_value;
			
			search_iterator = my_iterator.value();
			stop_value = search_iterator.value();
			while( !match_found && ( stop_value != ++search_iterator ))
				if( board[ search_iterator.value() ].isSelectable())
					if( board[ my_iterator.value() ].tileType() == board[ search_iterator.value() ].tileType())
						match_found = YES;
			
		} while( !match_found && ( start_tile != findNextSelectableTile( board )));
		
		if( match_found ) {
			
			// Unselect all tiles and select
			//	the two that matched.
			for( int k = 0; k < board.size(); ++k ) {
				board[ k ].setSelected( NO );
			}
			board[ my_iterator.value() ].setSelected( YES );
			board[ search_iterator.value() ].setSelected( YES );
			
			// We did select some tiles on the Game
			//	Board.  Set flag for the inquisitive.
			tiles_selected = YES;
			// At the next help pass start at the
			//	next tile.
			++my_iterator;
		} else {
			NSBeep();
		}
	} else {
		NSBeep();
	}
}

int Help::findNextSelectableTile( GameTileArray& board )
{
	BOOL	tile_found = NO;
	int 	stop_value = my_iterator.value();


	// Find a tile to search against.
	while (!tile_found && ( stop_value != ++my_iterator)) {
		if (board[ my_iterator.value() ].isSelectable()) {
			tile_found = YES;
		}
	}

	return tile_found ? my_iterator.value() : -1;
}

BOOL Help::isSelected( void ) {
	return tiles_selected;
}
