
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"FlowerTile.h"

class OrchidTile final: public FlowerTile {

public:
	OrchidTile(void): FlowerTile() {
		loadImageFromFile(@"f_orch");
	}
};
