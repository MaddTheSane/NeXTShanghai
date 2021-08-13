
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOTWOTILE_H__
#define __TILES_BAMBOOTWOTILE_H__

#include "GameTile.h"

class BambooTwoTile final: public GameTile {

public:
	BambooTwoTile(void): GameTile(BAMBOO_2) {
		loadImageFromFile(@"bam2");
	}
};

#endif
