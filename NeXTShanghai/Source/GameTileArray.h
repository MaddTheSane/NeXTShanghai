
/*
 * This object provides an array of Game Tile objects.
 *	In the application there is only one object of this class.
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"mj.h"
#import	"GameTile.h"


class GameTileArray {
private:
	GameTile*	game_tiles[ NUMBER_OF_TILES ];

public:
	GameTileArray( void );
	~GameTileArray( void );	

												// Index into the array to an
												//	element.
	GameTile&	operator[]( int );
												// Swap two elements in the array.
	void		swap( int, int );		
												// How many elements are in the array?
	int			size( void );	
};

