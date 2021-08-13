
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLEFOURTILE_H__
#define __TILES_CIRCLEFOURTILE_H__

#include "GameTile.h"

class CircleFourTile final: public GameTile {

public:
	CircleFourTile(void): GameTile(CIRCLE_4) {
		loadImageFromFile(@"circ4");
	}
};

#endif
