//
//  Tile.swift
//  Shanghai Swift
//
//  Created by C.W. Betts on 10/17/18.
//  Copyright © 2018 C.W. Betts. All rights reserved.
//

import Cocoa

/// This is a subdirectory within
/// the application where the tile
/// tiff images are stored.
private let TILE_TIFF_DIRECTORY	= "NeXTmj"

class Tile {
	/// This enumerated type is used to
	/// identify tiles by type.
	///
	/// These types are used to identify
	/// that two peices are equal.  If equal
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

	/// This is a image object which is
	/// loaded with an image and used
	/// to display a tile.
	private(set) var myTileImage: NSImage!
	
	/// This member function is called by
	/// subclasses to load a tiff file for
	/// tile rendering.
	func loadImage(named: NSImage.Name) {
		myTileImage = NSImage(named: TILE_TIFF_DIRECTORY + "/" + named)
	}
	
	/// This function does the actual drawing of
	///	an image to a point on the board.  All
	///	of the `drawImage()` routine call this.
	///
	/// The first parameter is a point on the
	///	board where the tile is drawn, the
	///	second parameter is the composite
	///	operation.
	final func compositeImage(at aPoint: NSPoint, using aMode: NSCompositingOperation) {
		var bPoint = aPoint
		// HACK: We use the compos Mode to check the tiles state... that's stupid.
		// Sorry will change that later...
		// NSCompositingOperationDestinationOver means... no background please...

		if aMode == .copy {
			NSImage(named: TILE_TIFF_DIRECTORY + "/Tile")?.draw(at: aPoint, from: .zero, operation: .sourceOver, fraction: 1)
		} else if aMode != .destinationOver {
			NSImage(named: TILE_TIFF_DIRECTORY + "/TileH")?.draw(at: aPoint, from: .zero, operation: .sourceOver, fraction: 1)
		}
		
		if aMode != .destinationOver {
			bPoint.x += 2;
			bPoint.y += 6;
		}
		myTileImage.draw(at: bPoint, from: .zero, operation: .sourceOver, fraction: 1)
	}
	
	//! This member function is called by the
	//! Board View to composite the tile a
	//! a location within the view. (The focus
	//! of the view must have been locked
	//! previously.)
	//! @discussion This member function must be implemented
	//! in the subclasses since game tiles
	//! can be highlighted.
	func drawImage(at point: NSPoint) {}
}

/// This is the base class for tiles that are
/// used on the game board.
class GameTile: Tile {
	/// This variable holds the tile's type.  It
	/// is assigned in the constructor of a
	/// a subclass.
	let myTileType: TileType
	
	init(tileType: TileType) {
		myTileType = tileType
		super.init()
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
		super.init(tileType: .bamboo1)
		loadImage(named: "bam1")
	}
}


final class BambooTwoTile: GameTile {
	init() {
		super.init(tileType: .bamboo2)
		loadImage(named: "bam2")
	}
}

final class BambooThreeTile: GameTile {
	init() {
		super.init(tileType: .bamboo3)
		loadImage(named: "bam3")
	}
}

final class BambooFourTile: GameTile {
	init() {
		super.init(tileType: .bamboo4)
		loadImage(named: "bam4")
	}
}

final class BambooFiveTile: GameTile {
	init() {
		super.init(tileType: .bamboo5)
		loadImage(named: "bam5")
	}
}

final class BambooSixTile: GameTile {
	init() {
		super.init(tileType: .bamboo6)
		loadImage(named: "bam6")
	}
}

final class BambooSevenTile: GameTile {
	init() {
		super.init(tileType: .bamboo7)
		loadImage(named: "bam7")
	}
}

final class BambooEightTile: GameTile {
	init() {
		super.init(tileType: .bamboo8)
		loadImage(named: "bam8")
	}
}

final class BambooNineTile: GameTile {
	init() {
		super.init(tileType: .bamboo9)
		loadImage(named: "bam9")
	}
}

// MARK: - Season Tiles

class SeasonTile: GameTile {
	init() {
		super.init(tileType: .season)
	}
}

final class AutumnSeasonTile: SeasonTile {
	override init() {
		super.init()
		loadImage(named: "s_autumn")
	}
}

final class SpringSeasonTile: SeasonTile {
	override init() {
		super.init()
		loadImage(named: "s_spring")
	}
}

final class SummerSeasonTile: SeasonTile {
	override init() {
		super.init()
		loadImage(named: "s_summer")
	}
}

final class WinterSeasonTile: SeasonTile {
	override init() {
		super.init()
		loadImage(named: "s_winter")
	}
}

