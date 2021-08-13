
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_PLUMTILE_H__
#define __TILES_PLUMTILE_H__

#include "FlowerTile.h"

class PlumTile final: public FlowerTile {

public:
	PlumTile(void): FlowerTile() {
		loadImageFromFile(@"f_plum");
	}
};

#endif
