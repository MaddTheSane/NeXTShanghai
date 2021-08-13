
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOFIVETILE_H__
#define __TILES_BAMBOOFIVETILE_H__

#include "GameTile.h"

class BambooFiveTile final: public GameTile {

public:
	BambooFiveTile(void): GameTile(BAMBOO_5) {
		loadImageFromFile(@"bam5");
	}
};

#endif
