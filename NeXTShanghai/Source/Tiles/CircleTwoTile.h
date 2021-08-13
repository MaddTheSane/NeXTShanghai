
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLETWOTILE_H__
#define __TILES_CIRCLETWOTILE_H__

#include "GameTile.h"

class CircleTwoTile final: public GameTile {

public:
	CircleTwoTile(void): GameTile(CIRCLE_2) {
		loadImageFromFile(@"circ2");
	}
};

#endif
