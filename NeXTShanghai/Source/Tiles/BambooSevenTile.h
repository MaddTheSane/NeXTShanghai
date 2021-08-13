
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooSevenTile final: public GameTile {

public:
	BambooSevenTile(void): GameTile() {
		my_tile_type = BAMBOO_7;
		loadImageFromFile(@"bam7");
	}
};
