
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooTwoTile final: public GameTile {

public:
	BambooTwoTile(void): GameTile() {
		my_tile_type = BAMBOO_2;
		loadImageFromFile(@"bam2");
	}
};
