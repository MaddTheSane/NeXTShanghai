
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERSIXTILE_H__
#define __TILES_CHARACTERSIXTILE_H__

#include "GameTile.h"

class CharacterSixTile final: public GameTile {

public:
	CharacterSixTile(void): GameTile(CHARACTER_6) {
		loadImageFromFile(@"char6");
	}
};

#endif
