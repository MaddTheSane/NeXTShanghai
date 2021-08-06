
/*
 * North Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class NorthWindTile : public GameTile {

public:
	NorthWindTile(void): GameTile() {
		my_tile_type = NORTH_WIND;
		loadImageFromFile(@"w_north");
	}
};
