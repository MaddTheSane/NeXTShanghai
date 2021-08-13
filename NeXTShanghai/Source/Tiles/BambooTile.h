
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_BAMBOOTILE_H__
#define __TILES_BAMBOOTILE_H__

#include "FlowerTile.h"

class BambooTile final: public FlowerTile {

public:
	BambooTile(void): FlowerTile() {
		loadImageFromFile(@"f_bam");
	}
};

#endif
