
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOONETILE_H__
#define __TILES_BAMBOOONETILE_H__

#include "GameTile.h"

class BambooOneTile final: public GameTile {

public:
	BambooOneTile(void): GameTile(BAMBOO_1) {
		loadImageFromFile(@"bam1");
	}
};

#endif
