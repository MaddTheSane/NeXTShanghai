
/*
 * Base class for Flower Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_FLOWERTILE_H__
#define __TILES_FLOWERTILE_H__

#include "GameTile.h"

class FlowerTile : public GameTile {

public:
	FlowerTile(void): GameTile(FLOWER) { }
};

#endif
