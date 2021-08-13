
/*
 * Base class for Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __TILES_SEASONTILE_H__
#define __TILES_SEASONTILE_H__

#include "GameTile.h"

class SeasonTile : public GameTile {

public:
	SeasonTile(void): GameTile(SEASON) {
	}
};

class SpringSeasonTile final: public SeasonTile {

public:
	SpringSeasonTile(void): SeasonTile() {
		loadImageFromFile(@"s_spring");
	}
};

class SummerSeasonTile final: public SeasonTile {

public:
	SummerSeasonTile(void): SeasonTile() {
		loadImageFromFile(@"s_summer");
	}
};

class AutumnSeasonTile final: public SeasonTile {

public:
	AutumnSeasonTile(void): SeasonTile() {
		loadImageFromFile(@"s_autumn");
	}
};

class WinterSeasonTile final: public SeasonTile {

public:
	WinterSeasonTile(void) : SeasonTile() {
		loadImageFromFile(@"s_winter");
	}
};

#endif
