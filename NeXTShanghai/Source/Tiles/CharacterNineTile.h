
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERNINETILE_H__
#define __TILES_CHARACTERNINETILE_H__

#include "GameTile.h"

class CharacterNineTile final: public GameTile {

public:
	CharacterNineTile(void): GameTile(CHARACTER_9) {
		loadImageFromFile(@"char9");
	}
};

#endif
