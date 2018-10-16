
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class BambooNineTile : public GameTile {

public:
	BambooNineTile( void ) {
	
		my_tile_type = BAMBOO_9;
		loadImageFromFile( "bam9.tiff" );
	}
};

