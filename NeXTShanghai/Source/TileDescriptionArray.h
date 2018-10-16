
/*
 * This object holds an array of Tile Description objects.
 *	The default constructor calls the constr for this object initializes the array 
 *	with the Game Tiles. 
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"TileDescription.h"

extern "C" {
#import	"mj.h"
}


class TileDescriptionArray {
private:
												// This matrix holds a Tile Description 
												//	for all tile locations on the
												//	Game Board.  Effectivly, this matrix
												//	is a const. 
	TileDescription*	tile_descriptions[ NUMBER_OF_TILES ];


public:
	
	TileDescriptionArray( void );
	~TileDescriptionArray( void );
												// The only access to the array is to 
												//	examine a description.  So we'll
												//	return pointers (I don't really care
												//	for reference types anyway).
	TileDescription* operator[]( int );
												// How many elements are in the array?
	int			size( void );	
};

