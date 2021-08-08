
/*
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"NumberTileArray.h"
#import "AllNumberTiles.h"


#include <cassert>


NumberTileArray::NumberTileArray( void ) {
	number_tiles[ 0 ] = new NumberZeroTile();
	number_tiles[ 1 ] = new NumberOneTile();
	number_tiles[ 2 ] = new NumberTwoTile();
	number_tiles[ 3 ] = new NumberThreeTile();
	number_tiles[ 4 ] = new NumberFourTile();
	number_tiles[ 5 ] = new NumberFiveTile();
	number_tiles[ 6 ] = new NumberSixTile();
	number_tiles[ 7 ] = new NumberSevenTile();
	number_tiles[ 8 ] = new NumberEightTile();
	number_tiles[ 9 ] = new NumberNineTile();
}

NumberTileArray::~NumberTileArray( void ) {
	for( int i = 0; i < NUMBER_OF_NUMBER_TILES; ++i )
		delete number_tiles[ i ];
}

NumberTile& NumberTileArray::operator[]( int loc ) {
	assert( loc >= 0 && loc < NUMBER_OF_NUMBER_TILES );
	return *number_tiles[ loc ];
}
