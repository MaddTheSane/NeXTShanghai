
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberFiveTile : public NumberTile {

public:
	NumberFiveTile(void): NumberTile() {
		loadImageFromFile(@"n_5");
	}
};
