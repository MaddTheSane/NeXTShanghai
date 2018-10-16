
/*
 * This object is used to scramble the tiles on the
 *	Game Board.
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"GameTileArray.h"


class BoardScramble {
private:
												// Seed used for random number generator.
												//	Used for scrambling Tiles on the Game
												//	Board.
	int				seed;

public:

	BoardScramble( void );
												// These functions scramble a new game
												//	board based from a board level or a
												//	random scramble.
	void		scramble( int , GameTileArray& ),
				scramble( GameTileArray& );
};

