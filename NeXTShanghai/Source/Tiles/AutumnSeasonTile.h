
/*
 * Autumn Season Game Tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"SeasonTile.h"

class AutumnSeasonTile : public SeasonTile {

public:
	AutumnSeasonTile(void): SeasonTile() {
		loadImageFromFile(@"s_autumn");
	}
};
