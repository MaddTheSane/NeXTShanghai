
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"FlowerTile.h"

class PlumTile final: public FlowerTile {

public:
	PlumTile(void): FlowerTile() {
		loadImageFromFile(@"f_plum");
	}
};
