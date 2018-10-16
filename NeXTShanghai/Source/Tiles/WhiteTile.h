
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class WhiteTile : public GameTile {

public:
	WhiteTile( void ) {
	
		my_tile_type = WHITE;
		loadImageFromFile( @"d_white" );
	}
};

