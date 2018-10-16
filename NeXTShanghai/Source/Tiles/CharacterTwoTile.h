
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CharacterTwoTile : public GameTile {

public:
	CharacterTwoTile( void ) {
	
		my_tile_type = CHARACTER_2;
		loadImageFromFile( "char2.tiff" );
	}
};

