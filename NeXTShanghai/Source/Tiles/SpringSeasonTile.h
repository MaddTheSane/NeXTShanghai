
/*
 * Spring Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"SeasonTile.h"

class SpringSeasonTile : public SeasonTile {

public:
	SpringSeasonTile(void): SeasonTile() {
		loadImageFromFile(@"s_spring");
	}
};
