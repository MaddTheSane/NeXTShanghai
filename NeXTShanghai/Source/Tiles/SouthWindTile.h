
/*
 * South Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_SOUTHWINDTILE_H__
#define __TILES_SOUTHWINDTILE_H__

#include "GameTile.h"

class SouthWindTile final: public GameTile {

public:
	SouthWindTile(void): GameTile(SOUTH_WIND) {
		loadImageFromFile(@"w_south");
	}
};

#endif
