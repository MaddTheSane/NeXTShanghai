
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleNineTile : public GameTile {

public:
	CircleNineTile( void ) {
	
		my_tile_type = CIRCLE_9;
		loadImageFromFile( @"circ9" );
	}
};

