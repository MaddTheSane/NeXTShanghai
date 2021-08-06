
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"FlowerTile.h"

class BambooTile : public FlowerTile {

public:
	BambooTile(void): FlowerTile() {
		loadImageFromFile(@"f_bam");
	}
};
