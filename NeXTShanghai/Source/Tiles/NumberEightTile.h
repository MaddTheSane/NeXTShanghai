
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberEightTile : public NumberTile {

public:
	NumberEightTile(void): NumberTile() {
		loadImageFromFile(@"n_8");
	}
};
