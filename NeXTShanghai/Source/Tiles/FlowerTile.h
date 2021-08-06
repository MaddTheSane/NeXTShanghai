
/*
 * Base class for Flower Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class FlowerTile : public GameTile {

public:
	FlowerTile(void): GameTile() {
		my_tile_type = FLOWER;
	}
};
