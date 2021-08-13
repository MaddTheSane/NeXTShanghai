
/*
 * East Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_EASTWINDTILE_H__
#define __TILES_EASTWINDTILE_H__

#include "GameTile.h"

class EastWindTile final: public GameTile {

public:
	EastWindTile(void): GameTile(EAST_WIND) {
		loadImageFromFile(@"w_east");
	}
};

#endif
