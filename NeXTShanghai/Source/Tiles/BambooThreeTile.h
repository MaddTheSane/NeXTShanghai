
/*
 * Bamboo Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOTHREETILE_H__
#define __TILES_BAMBOOTHREETILE_H__

#include "GameTile.h"

class BambooThreeTile final: public GameTile {

public:
	BambooThreeTile(void): GameTile(BAMBOO_3) {
		loadImageFromFile(@"bam3");
	}
};

#endif
