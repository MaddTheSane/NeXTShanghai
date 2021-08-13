// Sucks the number tile definitions...
// which actually have some cone inside..:-)

#ifndef __TILES_NUMBERTILES_H__
#define __TILES_NUMBERTILES_H__

#import "NumberTile.h"

class NumberZeroTile final: public NumberTile {

public:
	NumberZeroTile(void): NumberTile() {
		loadImageFromFile(@"n_0");
	}
};

class NumberOneTile final: public NumberTile {

public:
	NumberOneTile(void): NumberTile() {
		loadImageFromFile(@"n_1");
	}
};

class NumberTwoTile final: public NumberTile {

public:
	NumberTwoTile(void): NumberTile() {
		loadImageFromFile(@"n_2");
	}
};

class NumberThreeTile final: public NumberTile {

public:
	NumberThreeTile(void): NumberTile() {
		loadImageFromFile(@"n_3");
	}
};

class NumberFourTile final: public NumberTile {

public:
	NumberFourTile(void): NumberTile() {
		loadImageFromFile(@"n_4");
	}
};

class NumberFiveTile final: public NumberTile {

public:
	NumberFiveTile(void): NumberTile() {
		loadImageFromFile(@"n_5");
	}
};

class NumberSixTile final: public NumberTile {

public:
	NumberSixTile(void): NumberTile() {
		loadImageFromFile(@"n_6");
	}
};

class NumberSevenTile final: public NumberTile {

public:
	NumberSevenTile(void): NumberTile() {
		loadImageFromFile(@"n_7");
	}
};

class NumberEightTile final: public NumberTile {

public:
	NumberEightTile(void): NumberTile() {
		loadImageFromFile(@"n_8");
	}
};

class NumberNineTile final: public NumberTile {

public:
	NumberNineTile(void): NumberTile() {
		loadImageFromFile(@"n_9");
	}
};

#endif
