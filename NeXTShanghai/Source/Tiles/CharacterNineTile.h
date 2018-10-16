
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CharacterNineTile : public GameTile {

public:
	CharacterNineTile( void ) {
	
		my_tile_type = CHARACTER_9;
		loadImageFromFile( "char9.tiff" );
	}
};

