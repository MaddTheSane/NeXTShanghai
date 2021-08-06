
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberSevenTile : public NumberTile {

public:
	NumberSevenTile(void): NumberTile() {
		loadImageFromFile(@"n_7");
	}
};
