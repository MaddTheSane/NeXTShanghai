//
//  GameTileArray.swift
//  Shanghai Swift
//
//  Created by C.W. Betts on 7/31/21.
//  Copyright © 2021 C.W. Betts. All rights reserved.
//

import Foundation

struct GameTileArray {
	private var gameTiles: [GameTile]
	
	init() {
		var allTiles = [GameTile]()
		allTiles.reserveCapacity(Int(MJCountTotalTitles))
		for _ in 0 ..< NUMBER_OF_EAST_WIND {
			allTiles.append(EastWindTile())
		}
		for _ in 0 ..< NUMBER_OF_WEST_WIND {
			allTiles.append(WestWindTile())
		}
		for _ in 0 ..< NUMBER_OF_NORTH_WIND {
			allTiles.append(NorthWindTile())
		}
		for _ in 0 ..< NUMBER_OF_SOUTH_WIND {
			allTiles.append(SouthWindTile())
		}
		for _ in 0 ..< NUMBER_OF_WINTER_SEASON {
			allTiles.append(WinterSeasonTile())
		}
		for _ in 0 ..< NUMBER_OF_SPRING_SEASON {
			allTiles.append(SpringSeasonTile())
		}
		for _ in 0 ..< NUMBER_OF_SUMMER_SEASON {
			allTiles.append(SummerSeasonTile())
		}
		for _ in 0 ..< NUMBER_OF_AUTUMN_SEASON {
			allTiles.append(AutumnSeasonTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_1 {
			allTiles.append(CircleOneTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_2 {
			allTiles.append(CircleTwoTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_3 {
			allTiles.append(CircleThreeTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_4 {
			allTiles.append(CircleFourTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_5 {
			allTiles.append(CircleFiveTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_6 {
			allTiles.append(CircleSixTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_7 {
			allTiles.append(CircleSevenTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_8 {
			allTiles.append(CircleEightTile())
		}
		for _ in 0 ..< NUMBER_OF_CIRCLE_9 {
			allTiles.append(CircleNineTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_1 {
			allTiles.append(BambooOneTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_2 {
			allTiles.append(BambooTwoTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_3 {
			allTiles.append(BambooThreeTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_4 {
			allTiles.append(BambooFourTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_5 {
			allTiles.append(BambooFiveTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_6 {
			allTiles.append(BambooSixTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_7 {
			allTiles.append(BambooSevenTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_8 {
			allTiles.append(BambooEightTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO_9 {
			allTiles.append(BambooNineTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_1 {
			allTiles.append(CharacterOneTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_2 {
			allTiles.append(CharacterTwoTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_3 {
			allTiles.append(CharacterThreeTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_4 {
			allTiles.append(CharacterFourTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_5 {
			allTiles.append(CharacterFiveTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_6 {
			allTiles.append(CharacterSixTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_7 {
			allTiles.append(CharacterSevenTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_8 {
			allTiles.append(CharacterEightTile())
		}
		for _ in 0 ..< NUMBER_OF_CHARACTER_9 {
			allTiles.append(CharacterNineTile())
		}
		for _ in 0 ..< NUMBER_OF_RED {
			allTiles.append(RedTile())
		}
		for _ in 0 ..< NUMBER_OF_GREEN {
			allTiles.append(GreenTile())
		}
		for _ in 0 ..< NUMBER_OF_WHITE {
			allTiles.append(WhiteTile())
		}
		for _ in 0 ..< NUMBER_OF_BAMBOO {
			allTiles.append(BambooTile())
		}
		for _ in 0 ..< NUMBER_OF_PLUM {
			allTiles.append(PlumTile())
		}
		for _ in 0 ..< NUMBER_OF_ORCHID {
			allTiles.append(OrchidTile())
		}
		for _ in 0 ..< NUMBER_OF_MUM {
			allTiles.append(ChrysanthemumTile())
		}

		precondition(allTiles.count == Int(MJCountTotalTitles))
		
		gameTiles = allTiles
	}
	
	mutating func swap(_ i: Int, _ j: Int) {
		gameTiles.swapAt(i, j)
	}
	
	var count: Int {
		gameTiles.count
	}
	
	subscript(index: Int) -> GameTile {
		return gameTiles[index]
	}
}
