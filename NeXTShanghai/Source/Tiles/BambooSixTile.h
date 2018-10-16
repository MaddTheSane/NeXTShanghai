
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class BambooSixTile : public GameTile {

public:
	BambooSixTile( void ) {
	
		my_tile_type = BAMBOO_6;
		loadImageFromFile( "bam6.tiff" );
	}
};

