
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleSevenTile final: public GameTile {

public:
	CircleSevenTile(void): GameTile() {
		my_tile_type = CIRCLE_7;
		loadImageFromFile(@"circ7");
	}
};
