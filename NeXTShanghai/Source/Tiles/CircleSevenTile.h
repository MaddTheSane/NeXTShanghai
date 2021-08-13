
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLESEVENTILE_H__
#define __TILES_CIRCLESEVENTILE_H__

#include "GameTile.h"

class CircleSevenTile final: public GameTile {

public:
	CircleSevenTile(void): GameTile(CIRCLE_7) {
		loadImageFromFile(@"circ7");
	}
};

#endif
