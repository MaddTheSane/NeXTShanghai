
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class RedTile final: public GameTile {

public:
	RedTile(void): GameTile() {
		my_tile_type = RED;
		loadImageFromFile(@"d_red");
	}
};
