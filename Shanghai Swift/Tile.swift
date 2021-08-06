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
	final func loadImage(named: NSImage.Name) {
		myTileImage = NSImage(named: TILE_TIFF_DIRECTORY + "/" + named)
	}
	
	/// This function does the actual drawing of
	///	an image to a point on the board.  All
	///	of the `drawImage()` routine call this.
	///
	/// - parameter aPoint: The point on the
	///	board where the tile is drawn.
	///	- parameter aMode: The composite
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
	
	/// This member function is called by the
	/// Board View to composite the tile a
	/// a location within the view. (The focus
	/// of the view must have been locked
	/// previously.)
	///
	/// This member function must be implemented
	/// in the subclasses since game tiles
	/// can be highlighted.
	func drawImage(at point: NSPoint) {}
}
