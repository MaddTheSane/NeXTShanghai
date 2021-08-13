
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"FlowerTile.h"

class ChrysanthemumTile final: public FlowerTile {

public:
	ChrysanthemumTile(void): FlowerTile() {
		loadImageFromFile(@"f_mum");
	}
};
