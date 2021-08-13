
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CIRCLESIXTILE_H__
#define __TILES_CIRCLESIXTILE_H__

#include "GameTile.h"

class CircleSixTile final: public GameTile {

public:
	CircleSixTile(void): GameTile(CIRCLE_6) {
		loadImageFromFile(@"circ6");
	}
};

#endif
