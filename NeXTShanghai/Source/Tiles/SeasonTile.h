
/*
 * Base class for Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class SeasonTile : public GameTile {

public:
	SeasonTile(void): GameTile() {
		my_tile_type = SEASON;
	}
};
