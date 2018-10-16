
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CircleTwoTile : public GameTile {

public:
	CircleTwoTile( void ) {
	
		my_tile_type = CIRCLE_2;
		loadImageFromFile( "circ2.tiff" );
	}
};

