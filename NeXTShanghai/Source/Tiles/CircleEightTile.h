
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLEEIGHTTILE_H__
#define __TILES_CIRCLEEIGHTTILE_H__

#include "GameTile.h"

class CircleEightTile final: public GameTile {

public:
	CircleEightTile(void): GameTile(CIRCLE_8) {
		loadImageFromFile(@"circ8");
	}
};

#endif
