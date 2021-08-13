
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHRYSANTHEMUMTILE_H__
#define __TILES_CHRYSANTHEMUMTILE_H__

#include "FlowerTile.h"

class ChrysanthemumTile final: public FlowerTile {

public:
	ChrysanthemumTile(void): FlowerTile() {
		loadImageFromFile(@"f_mum");
	}
};

#endif
