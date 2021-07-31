/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"TileIterator.h"

extern "C" {
#include "mj.h"
}


TileIterator::TileIterator( void ) {
	my_value = 0;
}

TileIterator::TileIterator( int initial_value ) {
	my_value = initial_value % NUMBER_OF_TILES;
}

int TileIterator::value( void ) {
	return my_value;
}

int  TileIterator::operator()() {
	my_value = ( my_value + 1 ) % NUMBER_OF_TILES;
	
	return my_value;
}

int TileIterator::operator+( int another_value ) {
	my_value = ( my_value + another_value ) % NUMBER_OF_TILES;

	return my_value;
}

int TileIterator::operator-( int another_value ) {
	my_value = ( my_value - another_value ) % NUMBER_OF_TILES;

	return my_value;
}

int TileIterator::operator++( void ) {
	++my_value;
	my_value %= NUMBER_OF_TILES;
	
	return my_value;
}

int TileIterator::operator--( void ) {
	--my_value;
	my_value %= NUMBER_OF_TILES;
	
	return my_value;
}

void TileIterator::operator=( int another_value ) {
	my_value = another_value % NUMBER_OF_TILES;
}
