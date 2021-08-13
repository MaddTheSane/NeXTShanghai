
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CircleSixTile final: public GameTile {

public:
	CircleSixTile(void): GameTile() {
		my_tile_type = CIRCLE_6;
		loadImageFromFile(@"circ6");
	}
};
