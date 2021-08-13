
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERTHREETILE_H__
#define __TILES_CHARACTERTHREETILE_H__

#include "GameTile.h"

class CharacterThreeTile final: public GameTile {

public:
	CharacterThreeTile(void): GameTile(CHARACTER_3) {
		loadImageFromFile(@"char3");
	}
};

#endif
