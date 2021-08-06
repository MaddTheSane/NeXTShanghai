
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterThreeTile : public GameTile {

public:
	CharacterThreeTile(void): GameTile() {
		my_tile_type = CHARACTER_3;
		loadImageFromFile(@"char3");
	}
};
