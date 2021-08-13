
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLENINETILE_H__
#define __TILES_CIRCLENINETILE_H__

#include "GameTile.h"

class CircleNineTile final: public GameTile {

public:
	CircleNineTile(void): GameTile(CIRCLE_9) {
		loadImageFromFile(@"circ9");
	}
};

#endif
