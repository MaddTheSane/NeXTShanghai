
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class BambooOneTile : public GameTile {

public:
	BambooOneTile( void ) {
	
		my_tile_type = BAMBOO_1;
		loadImageFromFile( "bam1.tiff" );
	}
};

