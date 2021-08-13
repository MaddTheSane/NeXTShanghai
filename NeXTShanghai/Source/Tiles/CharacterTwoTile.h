
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERTWOTILE_H__
#define __TILES_CHARACTERTWOTILE_H__

#include "GameTile.h"

class CharacterTwoTile final: public GameTile {

public:
	CharacterTwoTile(void): GameTile(CHARACTER_2) {
		loadImageFromFile(@"char2");
	}
};

#endif
