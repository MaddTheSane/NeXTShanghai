
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberZeroTile : public NumberTile {

public:
	NumberZeroTile(void): NumberTile() {
		loadImageFromFile(@"n_0");
	}
};
