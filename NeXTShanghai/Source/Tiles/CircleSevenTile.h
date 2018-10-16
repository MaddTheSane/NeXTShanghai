
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CircleSevenTile : public GameTile {

public:
	CircleSevenTile( void ) {
	
		my_tile_type = CIRCLE_7;
		loadImageFromFile( "circ7.tiff" );
	}
};

