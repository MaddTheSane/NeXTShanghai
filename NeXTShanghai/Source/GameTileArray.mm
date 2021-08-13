
/*
 * This object provides an array of Game Tile objects.
 *	In the application there is only one object of this class.
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import	"GameTileArray.h"

#import "EastWindTile.h"
#import "WestWindTile.h"
#import "NorthWindTile.h"
#import "SouthWindTile.h"
#import "SeasonTile.h"
#import "CircleOneTile.h"
#import "CircleTwoTile.h"
#import "CircleThreeTile.h"
#import "CircleFourTile.h"
#import "CircleFiveTile.h"
#import "CircleSixTile.h"
#import "CircleSevenTile.h"
#import "CircleEightTile.h"
#import "CircleNineTile.h"
#import "BambooOneTile.h"
#import "BambooTwoTile.h"
#import "BambooThreeTile.h"
#import "BambooFourTile.h"
#import "BambooFiveTile.h"
#import "BambooSixTile.h"
#import "BambooSevenTile.h"
#import "BambooEightTile.h"
#import "BambooNineTile.h"
#import "CharacterOneTile.h"
#import "CharacterTwoTile.h"
#import "CharacterThreeTile.h"
#import "CharacterFourTile.h"
#import "CharacterFiveTile.h"
#import "CharacterSixTile.h"
#import "CharacterSevenTile.h"
#import "CharacterEightTile.h"
#import "CharacterNineTile.h"
#import "WhiteTile.h"
#import "RedTile.h"
#import	"GreenTile.h"
#import "BambooTile.h"
#import "PlumTile.h"
#import "OrchidTile.h"
#import "ChrysanthemumTile.h"

#include <cassert>
#include <algorithm>


GameTileArray::GameTileArray(void) {
	int				i = 0, j;
	
	assert(NUMBER_OF_TILES == 144);
	
	// Build the table of Game Tiles.
	//	(Could be done much more efficiently
	//	but C++ doesn't support aggregate
	//	initialization.)
	
	for( j = 0; j < NUMBER_OF_EAST_WIND; ++j, ++i )
		game_tiles[ i ] = new EastWindTile;
	for( j = 0; j < NUMBER_OF_WEST_WIND; ++j, ++i )
		game_tiles[ i ] = new WestWindTile;
	for( j = 0; j < NUMBER_OF_NORTH_WIND; ++j, ++i )
		game_tiles[ i ] = new NorthWindTile;
	for( j = 0; j < NUMBER_OF_SOUTH_WIND; ++j, ++i )
		game_tiles[ i ] = new SouthWindTile;
	for( j = 0; j < NUMBER_OF_WINTER_SEASON; ++j, ++i )
		game_tiles[ i ] = new WinterSeasonTile;
	for( j = 0; j < NUMBER_OF_SPRING_SEASON; ++j, ++i )
		game_tiles[ i ] = new SpringSeasonTile;
	for( j = 0; j < NUMBER_OF_SUMMER_SEASON; ++j, ++i )
		game_tiles[ i ] = new SummerSeasonTile;
	for( j = 0; j < NUMBER_OF_AUTUMN_SEASON; ++j, ++i )
		game_tiles[ i ] = new AutumnSeasonTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_1; ++j, ++i )
		game_tiles[ i ] = new CircleOneTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_2; ++j, ++i )
		game_tiles[ i ] = new CircleTwoTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_3; ++j, ++i )
		game_tiles[ i ] = new CircleThreeTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_4; ++j, ++i )
		game_tiles[ i ] = new CircleFourTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_5; ++j, ++i )
		game_tiles[ i ] = new CircleFiveTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_6; ++j, ++i )
		game_tiles[ i ] = new CircleSixTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_7; ++j, ++i )
		game_tiles[ i ] = new CircleSevenTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_8; ++j, ++i )
		game_tiles[ i ] = new CircleEightTile;
	for( j = 0; j < NUMBER_OF_CIRCLE_9; ++j, ++i )
		game_tiles[ i ] = new CircleNineTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_1; ++j, ++i )
		game_tiles[ i ] = new BambooOneTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_2; ++j, ++i )
		game_tiles[ i ] = new BambooTwoTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_3; ++j, ++i )
		game_tiles[ i ] = new BambooThreeTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_4; ++j, ++i )
		game_tiles[ i ] = new BambooFourTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_5; ++j, ++i )
		game_tiles[ i ] = new BambooFiveTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_6; ++j, ++i )
		game_tiles[ i ] = new BambooSixTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_7; ++j, ++i )
		game_tiles[ i ] = new BambooSevenTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_8; ++j, ++i )
		game_tiles[ i ] = new BambooEightTile;
	for( j = 0; j < NUMBER_OF_BAMBOO_9; ++j, ++i )
		game_tiles[ i ] = new BambooNineTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_1; ++j, ++i )
		game_tiles[ i ] = new CharacterOneTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_2; ++j, ++i )
		game_tiles[ i ] = new CharacterTwoTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_3; ++j, ++i )
		game_tiles[ i ] = new CharacterThreeTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_4; ++j, ++i )
		game_tiles[ i ] = new CharacterFourTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_5; ++j, ++i )
		game_tiles[ i ] = new CharacterFiveTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_6; ++j, ++i )
		game_tiles[ i ] = new CharacterSixTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_7; ++j, ++i )
		game_tiles[ i ] = new CharacterSevenTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_8; ++j, ++i )
		game_tiles[ i ] = new CharacterEightTile;
	for( j = 0; j < NUMBER_OF_CHARACTER_9; ++j, ++i )
		game_tiles[ i ] = new CharacterNineTile;
	for( j = 0; j < NUMBER_OF_RED; ++j, ++i )
		game_tiles[ i ] = new RedTile;
	for( j = 0; j < NUMBER_OF_GREEN; ++j, ++i )
		game_tiles[ i ] = new GreenTile;
	for( j = 0; j < NUMBER_OF_WHITE; ++j, ++i )
		game_tiles[ i ] = new WhiteTile;
	for( j = 0; j < NUMBER_OF_BAMBOO; ++j, ++i )
		game_tiles[ i ] = new BambooTile;
	for( j = 0; j < NUMBER_OF_PLUM; ++j, ++i )
		game_tiles[ i ] = new PlumTile;
	for( j = 0; j < NUMBER_OF_ORCHID; ++j, ++i )
		game_tiles[ i ] = new OrchidTile;
	for( j = 0; j < NUMBER_OF_MUM; ++j, ++i )
		game_tiles[ i ] = new ChrysanthemumTile;
	assert(i == NUMBER_OF_TILES);
}

GameTileArray::~GameTileArray(void) {
	for (int i = 0; i < NUMBER_OF_TILES; i++) {
		delete game_tiles[i];
	}
}

GameTile& GameTileArray::operator[](int loc) {
	assert(loc >= 0 && loc < NUMBER_OF_TILES);
	return *game_tiles[loc];
}

void GameTileArray::swap(int i, int j) {
	assert(i >= 0 && i < NUMBER_OF_TILES);
	assert(j >= 0 && j < NUMBER_OF_TILES);

	std::swap(game_tiles[j], game_tiles[i]);
}

int GameTileArray::size(void) {
	return NUMBER_OF_TILES;
}
