
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOEIGHTTILE_H__
#define __TILES_BAMBOOEIGHTTILE_H__

#include "GameTile.h"

class BambooEightTile final: public GameTile {

public:
	BambooEightTile(void): GameTile(BAMBOO_8) {
		loadImageFromFile(@"bam8");
	}
};

#endif
