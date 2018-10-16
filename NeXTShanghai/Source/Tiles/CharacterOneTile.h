
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CharacterOneTile : public GameTile {

public:
	CharacterOneTile( void ) {
	
		my_tile_type = CHARACTER_1;
		loadImageFromFile( "char1.tiff" );
	}
};

