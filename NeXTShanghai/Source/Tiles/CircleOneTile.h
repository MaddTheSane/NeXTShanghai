
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLEONETILE_H__
#define __TILES_CIRCLEONETILE_H__

#include "GameTile.h"

class CircleOneTile final: public GameTile {

public:
	CircleOneTile(void): GameTile(CIRCLE_1) {
		loadImageFromFile(@"circ1");
	}
};

#endif
