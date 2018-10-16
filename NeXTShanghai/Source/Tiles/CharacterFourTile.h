
/*
 * Character Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<GameTile.h>

class CharacterFourTile : public GameTile {

public:
	CharacterFourTile( void ) {
	
		my_tile_type = CHARACTER_4;
		loadImageFromFile( "char4.tiff" );
	}
};

