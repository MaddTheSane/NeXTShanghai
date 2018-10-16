
/*
 * East Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class EastWindTile : public GameTile {

public:
	EastWindTile( void ) {
	
		my_tile_type = EAST_WIND;
		loadImageFromFile( @"w_east.tiff" );
	}
};

