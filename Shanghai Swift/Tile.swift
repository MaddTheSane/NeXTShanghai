//
//  Tile.swift
//  Shanghai Swift
//
//  Created by C.W. Betts on 10/17/18.
//  Copyright © 2018 C.W. Betts. All rights reserved.
//

import Cocoa

/// This is a namespace within the asset catalog where the
/// tile images are stored.
private let TILE_TIFF_DIRECTORY	= "NeXTmj"

class Tile {
	/// This is a image object which is
	/// loaded with an image and used
	/// to display a tile.
	let myTileImage: NSImage
	
	init(imageNamed named: NSImage.Name) {
		myTileImage = NSImage(named: TILE_TIFF_DIRECTORY + "/" + named)!
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
	/// - parameter point: the point to draw the image.
	func drawImage(at point: NSPoint) {}
}
