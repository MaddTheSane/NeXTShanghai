
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"FlowerTile.h"

class BambooTile : public FlowerTile {

public:
	BambooTile( void ) {
	
		loadImageFromFile( @"f_bam.tiff" );
	}
};

