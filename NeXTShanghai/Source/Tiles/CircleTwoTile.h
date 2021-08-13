
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleTwoTile final: public GameTile {

public:
	CircleTwoTile(void): GameTile() {
		my_tile_type = CIRCLE_2;
		loadImageFromFile(@"circ2");
	}
};
