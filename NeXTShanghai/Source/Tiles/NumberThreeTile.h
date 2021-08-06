
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberThreeTile : public NumberTile {

public:
	NumberThreeTile(void): NumberTile() {
		loadImageFromFile(@"n_3");
	}
};
