
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_REDTILE_H__
#define __TILES_REDTILE_H__

#include "GameTile.h"

class RedTile final: public GameTile {

public:
	RedTile(void): GameTile(RED) {
		loadImageFromFile(@"d_red");
	}
};

#endif
