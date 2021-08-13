
/*
 * East Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class EastWindTile final: public GameTile {

public:
	EastWindTile(void): GameTile() {
		my_tile_type = EAST_WIND;
		loadImageFromFile(@"w_east");
	}
};
