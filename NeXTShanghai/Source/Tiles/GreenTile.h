
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_GREENTILE_H__
#define __TILES_GREENTILE_H__

#include "GameTile.h"

class GreenTile final: public GameTile {

public:
	GreenTile(void): GameTile(GREEN) {
		loadImageFromFile(@"d_green");
	}
};

#endif
