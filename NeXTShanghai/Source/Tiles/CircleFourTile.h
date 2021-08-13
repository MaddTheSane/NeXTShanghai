
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleFourTile final: public GameTile {

public:
	CircleFourTile(void): GameTile() {
		my_tile_type = CIRCLE_4;
		loadImageFromFile(@"circ4");
	}
};
