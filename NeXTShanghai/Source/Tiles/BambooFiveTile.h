
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooFiveTile : public GameTile {

public:
	BambooFiveTile( void ) {
	
		my_tile_type = BAMBOO_5;
		loadImageFromFile( @"bam5" );
	}
};

