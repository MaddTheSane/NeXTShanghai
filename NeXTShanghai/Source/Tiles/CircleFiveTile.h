
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLEFIVETILE_H__
#define __TILES_CIRCLEFIVETILE_H__

#include "GameTile.h"

class CircleFiveTile final: public GameTile {

public:
	CircleFiveTile(void): GameTile(CIRCLE_5) {
		loadImageFromFile(@"circ5");
	}
};

#endif
