
/*
 * Summer Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"SeasonTile.h"

class SummerSeasonTile : public SeasonTile {

public:
	SummerSeasonTile( void ) {
	
		loadImageFromFile( @"s_summer" );
	}
};

