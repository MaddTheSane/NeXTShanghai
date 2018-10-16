
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterEightTile : public GameTile {

public:
	CharacterEightTile( void ) {
	
		my_tile_type = CHARACTER_8;
		loadImageFromFile( @"char8" );
	}
};

