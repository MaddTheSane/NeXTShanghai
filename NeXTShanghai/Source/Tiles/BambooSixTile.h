
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooSixTile final: public GameTile {

public:
	BambooSixTile(void): GameTile() {
		my_tile_type = BAMBOO_6;
		loadImageFromFile(@"bam6");
	}
};
