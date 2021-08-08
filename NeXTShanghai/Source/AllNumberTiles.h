// Sucks the number tile definitions...
// which actually have some cone inside..:-)

#import "NumberTile.h"

class NumberZeroTile : public NumberTile {

public:
	NumberZeroTile(void): NumberTile() {
		loadImageFromFile(@"n_0");
	}
};

class NumberOneTile : public NumberTile {

public:
	NumberOneTile(void): NumberTile() {
		loadImageFromFile(@"n_1");
	}
};

class NumberTwoTile : public NumberTile {

public:
	NumberTwoTile(void): NumberTile() {
		loadImageFromFile(@"n_2");
	}
};

class NumberThreeTile : public NumberTile {

public:
	NumberThreeTile(void): NumberTile() {
		loadImageFromFile(@"n_3");
	}
};

class NumberFourTile : public NumberTile {

public:
	NumberFourTile(void): NumberTile() {
		loadImageFromFile(@"n_4");
	}
};

class NumberFiveTile : public NumberTile {

public:
	NumberFiveTile(void): NumberTile() {
		loadImageFromFile(@"n_5");
	}
};

class NumberSixTile : public NumberTile {

public:
	NumberSixTile(void): NumberTile() {
		loadImageFromFile(@"n_6");
	}
};

class NumberSevenTile : public NumberTile {

public:
	NumberSevenTile(void): NumberTile() {
		loadImageFromFile(@"n_7");
	}
};

class NumberEightTile : public NumberTile {

public:
	NumberEightTile(void): NumberTile() {
		loadImageFromFile(@"n_8");
	}
};

class NumberNineTile : public NumberTile {

public:
	NumberNineTile(void): NumberTile() {
		loadImageFromFile(@"n_9");
	}
};
