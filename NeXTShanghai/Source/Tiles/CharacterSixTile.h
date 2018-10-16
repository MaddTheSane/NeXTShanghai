
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

class CharacterSixTile : public GameTile {

public:
	CharacterSixTile( void ) {
	
		my_tile_type = CHARACTER_6;
		loadImageFromFile( @"char6" );
	}
};

