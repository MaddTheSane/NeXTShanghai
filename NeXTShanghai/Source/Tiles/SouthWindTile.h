
/*
 * South Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class SouthWindTile : public GameTile {

public:
	SouthWindTile(void): GameTile() {
		my_tile_type = SOUTH_WIND;
		loadImageFromFile(@"w_south");
	}
};
