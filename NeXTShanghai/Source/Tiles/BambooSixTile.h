
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOSIXTILE_H__
#define __TILES_BAMBOOSIXTILE_H__

#include "GameTile.h"

class BambooSixTile final: public GameTile {

public:
	BambooSixTile(void): GameTile(BAMBOO_6) {
		loadImageFromFile(@"bam6");
	}
};

#endif
