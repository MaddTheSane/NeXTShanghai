
/*
 * West Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class WestWindTile final: public GameTile {

public:
	WestWindTile(void): GameTile() {
		my_tile_type = WEST_WIND;
		loadImageFromFile(@"w_west");
	}
};
