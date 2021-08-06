
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class BambooThreeTile : public GameTile {

public:
	BambooThreeTile(void): GameTile() {
		my_tile_type = BAMBOO_3;
		loadImageFromFile(@"bam3");
	}
};

