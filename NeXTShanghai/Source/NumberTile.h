
/*
 * There are ten number tiles, 0 to 9.
 *	Number Tiles are used to show the number of tiles
 *	remaining to be cleared on the game board.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"Tile.h"

extern "Objective-C" {
#import	<objc/objc.h>
}


class NumberTile : public Tile {

public:
	virtual void	drawImage( NXPoint );

};

