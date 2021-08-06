
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberTwoTile : public NumberTile {

public:
	NumberTwoTile(void): NumberTile() {
		loadImageFromFile(@"n_2");
	}
};
