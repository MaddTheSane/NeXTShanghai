
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"TileDescriptionArray.h"

#include <cassert>


TileDescriptionArray::TileDescriptionArray( void ) {
	assert( NUMBER_OF_TILES == 144 );
	int				i = 0;
	
	
	// Build the array of Tile
	//	Description objects.
	for (i = 0; i < NUMBER_OF_TILES; ++i) {
		tile_descriptions[ i ] = new TileDescription( i );
	}
}

TileDescriptionArray::~TileDescriptionArray( void ) {
	int	i;
	
	
	for (i = 0; i < NUMBER_OF_TILES; ++i) {
		delete tile_descriptions[ i ];
	}
}

TileDescription* TileDescriptionArray::operator[]( int loc ) {
	assert( loc >= 0 && loc < NUMBER_OF_TILES );
	return tile_descriptions[ loc ];
}

int TileDescriptionArray::size( void ) {
	return NUMBER_OF_TILES;
}
