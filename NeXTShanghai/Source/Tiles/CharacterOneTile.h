
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERONETILE_H__
#define __TILES_CHARACTERONETILE_H__

#include "GameTile.h"

class CharacterOneTile final: public GameTile {

public:
	CharacterOneTile(void): GameTile(CHARACTER_1) {
		loadImageFromFile(@"char1");
	}
};

#endif
