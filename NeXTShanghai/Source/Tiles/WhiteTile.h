
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_WHITETILE_H__
#define __TILES_WHITETILE_H__

#include "GameTile.h"

class WhiteTile final: public GameTile {

public:
	WhiteTile(void): GameTile(WHITE) {
		loadImageFromFile(@"d_white");
	}
};

#endif
