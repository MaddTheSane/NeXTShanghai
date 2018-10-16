
/*
 * Winter Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"SeasonTile.h"

class WinterSeasonTile : public SeasonTile {

public:
	WinterSeasonTile( void ) {
	
		loadImageFromFile( @"s_winter" );
	}
};

