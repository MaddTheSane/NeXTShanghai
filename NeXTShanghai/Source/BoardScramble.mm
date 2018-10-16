
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"BoardScramble.h"

extern "C" {
#import	<assert.h>
#import	<libc.h>
#import	<stdlib.h>
#import	<sys/time.h>

#import	"mj.h"
}


#ifndef BSD_RANDOM
#ifdef SYSV
#define BSD_RANDOM 0
#else
#define BSD_RANDOM 1
#endif
#endif
#if BSD_RANDOM
#define RANDOM(x)	((random() >> 8) % x)
#else
#define RANDOM(x)	((rand() >> 8) % x)
#endif


BoardScramble::BoardScramble( void ) {

    struct timeval	tp;
    struct timezone	tz;
#if BSD_RANDOM
	static char		state[256];
#endif

													// Initialize the random number
													//	generator used to generate tile
													//	placement (taken directly from
													//	xmj).

    gettimeofday( &tp, &tz );
#if BSD_RANDOM
    (void)initstate((unsigned)(tp.tv_sec % 255), state, 256);
#else
    (void)srand((unsigned)(tp.tv_sec % 255));
#endif
    seed = RANDOM(20011);
}


void BoardScramble::scramble( int level, GameTileArray& board ) {


	assert( level <= 20011 );
	
	seed = level;
	seed %= 20011;
	
	this->scramble( board );
}


void BoardScramble::scramble( GameTileArray& board ) {

	int	pool[ NUMBER_OF_TILES ];
	int	i, j;
	
	
	/*
	 * Grossly abstracted from xmj.
	 */
	 
												// Initialize the random number
												//	generator.
	(void)srandom( seed );

												// Initialize tile pool
	for( i = 0; i < NUMBER_OF_TILES; i++ ) 
		pool[ i ] = YES;
	
	for( j = 0; j < NUMBER_OF_TILES; j++ ) {
		BOOL		ok = NO;
		int			dir;
		
		/* Randomly seed index into pool. Randomly *
		 *  run up or down list until unused tile  *
		 *  is found or end of list. If end of     *
		 *  list reseed and run in opposite        *
		 *  direction in list until unused tile is *
		 *  found. If beginning of list found,     *
		 *  start over. 			   */
		while (ok == NO) {
			i = RANDOM( NUMBER_OF_TILES -1 );
			dir = random()&01;
			while (( i < NUMBER_OF_TILES || i >=0 ) && pool[i] == NO ) 
				(dir) ? i++ : i--;
			if (i >= NUMBER_OF_TILES || i < 0 ) { /* Thud! Reverse march! */
				i = RANDOM( NUMBER_OF_TILES -1 );
				while (( i < NUMBER_OF_TILES || i >= 0) && pool[i] == NO ) 
					(dir) ? i-- : i++;
			}
			if (i >= NUMBER_OF_TILES || i < 0) 
				continue; /* Missed! try again */
			pool[i] = NO;
			ok = YES;
		}
		
		board.swap( i, j );
	}
}


