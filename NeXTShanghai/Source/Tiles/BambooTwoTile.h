
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooTwoTile : public GameTile {

public:
	BambooTwoTile( void ) {
	
		my_tile_type = BAMBOO_2;
		loadImageFromFile( @"bam2" );
	}
};

