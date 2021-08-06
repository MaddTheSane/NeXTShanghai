
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterFourTile : public GameTile {

public:
	CharacterFourTile(void): GameTile() {
		my_tile_type = CHARACTER_4;
		loadImageFromFile(@"char4");
	}
};
