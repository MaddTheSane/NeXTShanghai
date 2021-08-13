
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterNineTile final: public GameTile {

public:
	CharacterNineTile(void): GameTile() {
		my_tile_type = CHARACTER_9;
		loadImageFromFile(@"char9");
	}
};
