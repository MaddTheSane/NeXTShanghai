
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterOneTile final: public GameTile {

public:
	CharacterOneTile(void): GameTile() {
		my_tile_type = CHARACTER_1;
		loadImageFromFile(@"char1");
	}
};
