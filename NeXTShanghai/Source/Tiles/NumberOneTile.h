
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberOneTile : public NumberTile {

public:
	NumberOneTile(void): NumberTile() {
		loadImageFromFile(@"n_1");
	}
};
