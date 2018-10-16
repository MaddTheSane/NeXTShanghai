
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterSevenTile : public GameTile {

public:
	CharacterSevenTile( void ) {
	
		my_tile_type = CHARACTER_7;
		loadImageFromFile( @"char7" );
	}
};

