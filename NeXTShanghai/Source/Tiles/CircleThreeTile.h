
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CircleThreeTile : public GameTile {

public:
	CircleThreeTile( void ) {
	
		my_tile_type = CIRCLE_3;
		loadImageFromFile( "circ3.tiff" );
	}
};

