
/*
 * Winter Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"SeasonTile.h"

class WinterSeasonTile final: public SeasonTile {

public:
	WinterSeasonTile(void) : SeasonTile() {
		loadImageFromFile(@"s_winter");
	}
};

