
/*
 * Circle Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class WhiteTile final: public GameTile {

public:
	WhiteTile(void): GameTile() {
		my_tile_type = WHITE;
		loadImageFromFile(@"d_white");
	}
};
