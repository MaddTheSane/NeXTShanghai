
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOSEVENTILE_H__
#define __TILES_BAMBOOSEVENTILE_H__

#include "GameTile.h"

class BambooSevenTile final: public GameTile {

public:
	BambooSevenTile(void): GameTile(BAMBOO_7) {
		loadImageFromFile(@"bam7");
	}
};

#endif
