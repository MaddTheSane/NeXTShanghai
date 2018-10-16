
/*
 * This object provides information about an object and
 *	its placement on the Game Board.
 * This object holds the actual description about an object.
 *	Its constructor is passed an integer which indicates the tile's
 *	position on the game board.  The constructor is smart and initializes
 *	its list's from that integer.  The constructor is the only piece of
 *	code that know that information.
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"IntegerList.h"

extern "Objective-C" {
#import	<dpsclient/event.h>
}


class TileDescription {

private:
												// These lists hold integers to locate
												//	tiles of an object to its left, right, 
												//	and covered.
												// When a tile is clicked it looks at the
												//	tiles surrounding it to determine if it
												//	can be selected.  It looks at the
												//	tiles to its left, right, and those
												//	that can cover it.
	IntegerList		left_list,
					right_list,
					covered_by_list;
public:
												// These routines returns a list of
												//	tiles on a side.
	IntegerList		&leftList( void ),
					&rightList( void ),
					&coveredList( void );

private:
												// Location of tile in the Game Board
												//	view.
	NXPoint	my_loc;
public:
												// This function returns a point where
												//	the tile should draw itself.
	NXPoint tileLocation( void );

public:
	TileDescription( int );
		
};

