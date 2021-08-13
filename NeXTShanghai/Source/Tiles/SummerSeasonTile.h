
/*
 * Summer Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"SeasonTile.h"

class SummerSeasonTile final: public SeasonTile {

public:
	SummerSeasonTile(void): SeasonTile() {
		loadImageFromFile(@"s_summer");
	}
};
