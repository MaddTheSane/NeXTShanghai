
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_CHARACTERFOURTILE_H__
#define __TILES_CHARACTERFOURTILE_H__

#include "GameTile.h"

class CharacterFourTile final: public GameTile {

public:
	CharacterFourTile(void): GameTile(CHARACTER_4) {
		loadImageFromFile(@"char4");
	}
};

#endif
