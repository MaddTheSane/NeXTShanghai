
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooEightTile : public GameTile {

public:
	BambooEightTile(void): GameTile() {
		my_tile_type = BAMBOO_8;
		loadImageFromFile(@"bam8");
	}
};
