
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterTwoTile : public GameTile {

public:
	CharacterTwoTile(void): GameTile() {
		my_tile_type = CHARACTER_2;
		loadImageFromFile(@"char2");
	}
};
