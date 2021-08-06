
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleFourTile : public GameTile {

public:
	CircleFourTile(void): GameTile() {
		my_tile_type = CIRCLE_4;
		loadImageFromFile(@"circ4");
	}
};
