
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleEightTile final: public GameTile {

public:
	CircleEightTile(void): GameTile() {
		my_tile_type = CIRCLE_8;
		loadImageFromFile(@"circ8");
	}
};
