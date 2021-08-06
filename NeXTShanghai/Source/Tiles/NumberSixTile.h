
/*
 * Number Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import "NumberTile.h"

class NumberSixTile : public NumberTile {

public:
	NumberSixTile(void): NumberTile() {
		loadImageFromFile(@"n_6");
	}
};
