
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleFiveTile : public GameTile {

public:
	CircleFiveTile(void): GameTile() {
		my_tile_type = CIRCLE_5;
		loadImageFromFile(@"circ5");
	}
};
