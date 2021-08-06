
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleOneTile : public GameTile {

public:
	CircleOneTile(void): GameTile() {
		my_tile_type = CIRCLE_1;
		loadImageFromFile(@"circ1");
	}
};
