//
//  NumberTile.swift
//  Shanghai Swift
//
//  Created by C.W. Betts on 7/29/21.
//  Copyright © 2021 C.W. Betts. All rights reserved.
//

import Foundation

class NumberTile: Tile {

	final override func drawImage(at aPoint: NSPoint) {
		// Arrggll...NSCompositingOperationDestinationOver is a flag for selection...see the Tile implemetation.
		// Its not a drawing Mode...never...

		compositeImage(at: aPoint, using: .destinationOver );
	}
}

final class NumberOneTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_1")
	}
}

final class NumberTwoTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_2")
	}
}

final class NumberThreeTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_3")
	}
}

final class NumberFourTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_4")
	}
}

final class NumberFiveTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_5")
	}
}

final class NumberSixTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_6")
	}
}

final class NumberSevenTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_7")
	}
}

final class NumberEightTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_8")
	}
}

final class NumberNineTile: NumberTile {
	override init() {
		super.init()
		loadImage(named: "n_9")
	}
}
