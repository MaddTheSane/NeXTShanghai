
/*
 * North Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_NORTHWINDTILE_H__
#define __TILES_NORTHWINDTILE_H__

#include "GameTile.h"

class NorthWindTile final: public GameTile {

public:
	NorthWindTile(void): GameTile(NORTH_WIND) {
		loadImageFromFile(@"w_north");
	}
};

#endif
