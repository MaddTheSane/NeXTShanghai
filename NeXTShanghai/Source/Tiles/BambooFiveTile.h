
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooFiveTile final: public GameTile {

public:
	BambooFiveTile(void): GameTile() {
		my_tile_type = BAMBOO_5;
		loadImageFromFile(@"bam5");
	}
};
