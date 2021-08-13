
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOONINETILE_H__
#define __TILES_BAMBOONINETILE_H__

#include "GameTile.h"

class BambooNineTile final: public GameTile {

public:
	BambooNineTile(void): GameTile(BAMBOO_9) {
		loadImageFromFile(@"bam9");
	}
};

#endif
