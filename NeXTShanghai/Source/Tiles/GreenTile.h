
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class GreenTile : public GameTile {

public:
	GreenTile(void): GameTile() {
		my_tile_type = GREEN;
		loadImageFromFile(@"d_green");
	}
};
