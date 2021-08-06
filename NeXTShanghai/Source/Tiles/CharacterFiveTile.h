
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterFiveTile : public GameTile {

public:
	CharacterFiveTile(void): GameTile() {
		my_tile_type = CHARACTER_5;
		loadImageFromFile(@"char5");
	}
};
