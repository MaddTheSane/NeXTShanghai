
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class RedTile : public GameTile {

public:
	RedTile( void ) {
	
		my_tile_type = RED;
		loadImageFromFile( @"d_red" );
	}
};

