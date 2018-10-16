
/*
 * This object provides an array of Number Tile objects.
 *	Number Tiles are used to display the remianing
 *	number of tiles on the Game Board.
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"mj.h"
#import	"NumberTile.h"


												// Number of digits from 0-9.
#define	NUMBER_OF_NUMBER_TILES	10


class NumberTileArray {
private:
	NumberTile*	number_tiles[ NUMBER_OF_NUMBER_TILES ];

public:
	NumberTileArray( void );
	~NumberTileArray( void );	

												// Index into the array to an
												//	element.
	NumberTile&	operator[]( int );
};

