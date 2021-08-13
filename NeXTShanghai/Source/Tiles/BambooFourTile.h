
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooFourTile final: public GameTile {

public:
	BambooFourTile(void): GameTile() {
		my_tile_type = BAMBOO_4;
		loadImageFromFile(@"bam4");
	}
};
