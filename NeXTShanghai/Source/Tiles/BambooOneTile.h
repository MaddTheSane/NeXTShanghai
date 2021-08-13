
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooOneTile final: public GameTile {

public:
	BambooOneTile(void): GameTile() {
		my_tile_type = BAMBOO_1;
		loadImageFromFile(@"bam1");
	}
};

