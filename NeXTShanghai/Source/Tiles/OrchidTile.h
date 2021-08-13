
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_ORCHIDTILE_H__
#define __TILES_ORCHIDTILE_H__

#import "FlowerTile.h"

class OrchidTile final: public FlowerTile {

public:
	OrchidTile(void): FlowerTile() {
		loadImageFromFile(@"f_orch");
	}
};

#endif
