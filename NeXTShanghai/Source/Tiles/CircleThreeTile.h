
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLETHREETILE_H__
#define __TILES_CIRCLETHREETILE_H__

#include "GameTile.h"

class CircleThreeTile final: public GameTile {

public:
	CircleThreeTile(void): GameTile(CIRCLE_3) {
		loadImageFromFile(@"circ3");
	}
};

#endif
