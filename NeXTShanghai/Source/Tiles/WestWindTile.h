
/*
 * West Wind Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_WESTWINDTILE_H__
#define __TILES_WESTWINDTILE_H__

#include "GameTile.h"

class WestWindTile final: public GameTile {

public:
	WestWindTile(void): GameTile(WEST_WIND) {
		loadImageFromFile(@"w_west");
	}
};

#endif
