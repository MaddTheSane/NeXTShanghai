
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberFourTile : public NumberTile {

public:
	NumberFourTile(void): NumberTile() {
		loadImageFromFile(@"n_4");
	}
};
