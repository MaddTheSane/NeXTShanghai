//
//  GameTile.swift
//  Shanghai Swift
//
//  Created by C.W. Betts on 8/6/21.
//  Copyright © 2021 C.W. Betts. All rights reserved.
//

import Cocoa

/// This is the base class for tiles that are
/// used on the game board.
class GameTile: Tile {
	/// This enumerated type is used to
	/// identify tiles by type.
	///
	/// These types are used to identify
	/// that two peices are equal.  If equal,
	/// they can be removed from the board.
	enum TileType: Int32, CaseIterable {
		case eastWind
		case southWind
		case westWind
		case northWind
		
		case season
		case flower
		
		case circle1
		case circle2
		case circle3
		case circle4
		case circle5
		case circle6
		case circle7
		case circle8
		case circle9
		
		case bamboo1
		case bamboo2
		case bamboo3
		case bamboo4
		case bamboo5
		case bamboo6
		case bamboo7
		case bamboo8
		case bamboo9
		
		case character1
		case character2
		case character3
		case character4
		case character5
		case character6
		case character7
		case character8
		case character9
		
		case red
		case white
		case green
	}
	
	/// This variable holds the tile's type.  It
	/// is assigned in the constructor of a
	/// a subclass.
	let myTileType: TileType
	
	init(tileType: TileType, imageNamed name: NSImage.Name) {
		myTileType = tileType
		super.init(imageNamed: name)
	}
	
	/// This is a flag which indicates wheather
	/// the tile has been selected.  If a tile
	/// is selected it's image is shown
	/// in reverse highlighting.
	var isSelected = false
	
	/// Those tiles then determine if they are selectable.
	var selectable = true
	
	/// A Tile Removed from the Game Board
	/// is not drawn on the board and doesn't
	/// prohibit the surrounding Tiles from
	/// being selectable.
	var removed = false
	var touched = false

	
	/// Game tiles highlight themselves if
	/// they are selected.
	override func drawImage(at aPoint: NSPoint) {
		if isSelected {
			compositeImage(at: aPoint, using: .plusDarker );
		} else {
			compositeImage(at: aPoint, using: .copy );
		}
	}
}

// MARK: - Bamboo Tiles

final class BambooOneTile: GameTile {
	init() {
		super.init(tileType: .bamboo1, imageNamed: "bam1")
	}
}


final class BambooTwoTile: GameTile {
	init() {
		super.init(tileType: .bamboo2, imageNamed: "bam2")
	}
}

final class BambooThreeTile: GameTile {
	init() {
		super.init(tileType: .bamboo3, imageNamed: "bam3")
	}
}

final class BambooFourTile: GameTile {
	init() {
		super.init(tileType: .bamboo4, imageNamed: "bam4")
	}
}

final class BambooFiveTile: GameTile {
	init() {
		super.init(tileType: .bamboo5, imageNamed: "bam5")
	}
}

final class BambooSixTile: GameTile {
	init() {
		super.init(tileType: .bamboo6, imageNamed: "bam6")
	}
}

final class BambooSevenTile: GameTile {
	init() {
		super.init(tileType: .bamboo7, imageNamed: "bam7")
	}
}

final class BambooEightTile: GameTile {
	init() {
		super.init(tileType: .bamboo8, imageNamed: "bam8")
	}
}

final class BambooNineTile: GameTile {
	init() {
		super.init(tileType: .bamboo9, imageNamed: "bam9")
	}
}

// MARK: - Season Tiles

class SeasonTile: GameTile {
	init(imageNamed named: NSImage.Name) {
		super.init(tileType: .season, imageNamed: named)
	}
}

final class AutumnSeasonTile: SeasonTile {
	init() {
		super.init(imageNamed: "s_autumn")
	}
}

final class SpringSeasonTile: SeasonTile {
	init() {
		super.init(imageNamed: "s_spring")
	}
}

final class SummerSeasonTile: SeasonTile {
	init() {
		super.init(imageNamed: "s_summer")
	}
}

final class WinterSeasonTile: SeasonTile {
	init() {
		super.init(imageNamed: "s_winter")
	}
}

// MARK: - Wind Tiles

final class EastWindTile : GameTile {
	init() {
		super.init(tileType: .eastWind, imageNamed: "w_east")
	}
}

final class NorthWindTile :  GameTile {
	init() {
		super.init(tileType: .northWind, imageNamed: "w_north")
	}
}

final class SouthWindTile :  GameTile {
	init() {
		super.init(tileType: .southWind, imageNamed: "w_south")
	}
}

final class WestWindTile : GameTile {
	init() {
		super.init(tileType: .westWind, imageNamed: "w_west")
	}
}

// MARK: - Color Tiles

final class RedTile: GameTile {
	init() {
		super.init(tileType: .red, imageNamed: "d_red")
	}
}

final class WhiteTile: GameTile {
	init() {
		super.init(tileType: .white, imageNamed: "d_white")
	}
}

final class GreenTile: GameTile {
	init() {
		super.init(tileType: .green, imageNamed: "d_green")
	}
}

// MARK: - Character Tiles

final class CharacterOneTile : GameTile {
	init() {
		super.init(tileType: .character1, imageNamed: "char1")
	}
}

final class CharacterTwoTile : GameTile {
	init() {
		super.init(tileType: .character2, imageNamed: "char2")
	}
}

final class CharacterThreeTile : GameTile {
	init() {
		super.init(tileType: .character3, imageNamed: "char3")
	}
}

final class CharacterFourTile : GameTile {
	init() {
		super.init(tileType: .character4, imageNamed: "char4")
	}
}

final class CharacterFiveTile : GameTile {
	init() {
		super.init(tileType: .character5, imageNamed: "char5")
	}
}

final class CharacterSixTile : GameTile {
	init() {
		super.init(tileType: .character6, imageNamed: "char6")
	}
}

final class CharacterSevenTile : GameTile {
	init() {
		super.init(tileType: .character7, imageNamed: "char7")
	}
}

final class CharacterEightTile : GameTile {
	init() {
		super.init(tileType: .character8, imageNamed: "char8")
	}
}

final class CharacterNineTile : GameTile {
	init() {
		super.init(tileType: .character9, imageNamed: "char9")
	}
}

// MARK: - Circle Tiles

final class CircleOneTile : GameTile {
	init() {
		super.init(tileType: .circle1, imageNamed: "circ1")
	}
}

final class CircleTwoTile : GameTile {
	init() {
		super.init(tileType: .circle2, imageNamed: "circ2")
	}
}

final class CircleThreeTile : GameTile {
	init() {
		super.init(tileType: .circle3, imageNamed: "circ3")
	}
}

final class CircleFourTile : GameTile {
	init() {
		super.init(tileType: .circle4, imageNamed: "circ4")
	}
}

final class CircleFiveTile : GameTile {
	init() {
		super.init(tileType: .circle5, imageNamed: "circ5")
	}
}

final class CircleSixTile : GameTile {
	init() {
		super.init(tileType: .circle6, imageNamed: "circ6")
	}
}

final class CircleSevenTile : GameTile {
	init() {
		super.init(tileType: .circle7, imageNamed: "circ7")
	}
}

final class CircleEightTile : GameTile {
	init() {
		super.init(tileType: .circle8, imageNamed: "circ8")
	}
}

final class CircleNineTile : GameTile {
	init() {
		super.init(tileType: .circle9, imageNamed: "circ9")
	}
}

// MARK: - Flower Tiles

class FlowerTile : GameTile {
	init(imageNamed named: NSImage.Name) {
		super.init(tileType: .flower, imageNamed: named)
	}
}

final class BambooTile: FlowerTile {
	init() {
		super.init(imageNamed: "f_bam")
	}
}

final class ChrysanthemumTile: FlowerTile {
	init() {
		super.init(imageNamed: "f_mum")
	}
}

final class OrchidTile:  FlowerTile {
	init() {
		super.init(imageNamed: "f_orch")
	}
}

final class PlumTile: FlowerTile {
	init() {
		super.init(imageNamed: "f_plum")
	}
}
