
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTEREIGHTTILE_H__
#define __TILES_CHARACTEREIGHTTILE_H__

#include "GameTile.h"

class CharacterEightTile final: public GameTile {

public:
	CharacterEightTile(void): GameTile(CHARACTER_8) {
		loadImageFromFile(@"char8");
	}
};

#endif
