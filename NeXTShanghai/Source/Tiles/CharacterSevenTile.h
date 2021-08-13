
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERSEVENTILE_H__
#define __TILES_CHARACTERSEVENTILE_H__

#include "GameTile.h"

class CharacterSevenTile final: public GameTile {

public:
	CharacterSevenTile(void): GameTile(CHARACTER_7) {
		loadImageFromFile(@"char7");
	}
};

#endif
