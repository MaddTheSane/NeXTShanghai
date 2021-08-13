
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOFOURTILE_H__
#define __TILES_BAMBOOFOURTILE_H__

#include "GameTile.h"

class BambooFourTile final: public GameTile {

public:
	BambooFourTile(void): GameTile(BAMBOO_4) {
		loadImageFromFile(@"bam4");
	}
};

#endif
