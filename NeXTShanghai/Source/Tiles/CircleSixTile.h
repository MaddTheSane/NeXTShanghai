
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleSixTile : public GameTile {

public:
	CircleSixTile( void ) {
	
		my_tile_type = CIRCLE_6;
		loadImageFromFile( @"circ6" );
	}
};

