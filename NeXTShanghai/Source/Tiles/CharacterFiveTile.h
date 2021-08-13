
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERFIVETILE_H__
#define __TILES_CHARACTERFIVETILE_H__

#include "GameTile.h"

class CharacterFiveTile final: public GameTile {

public:
	CharacterFiveTile(void): GameTile(CHARACTER_5) {
		loadImageFromFile(@"char5");
	}
};

#endif
