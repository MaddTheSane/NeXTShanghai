
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooNineTile final: public GameTile {

public:
	BambooNineTile(void): GameTile() {
		my_tile_type = BAMBOO_9;
		loadImageFromFile(@"bam9");
	}
};
