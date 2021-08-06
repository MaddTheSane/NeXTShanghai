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

		compositeImage(at: aPoint, using: .destinationOver)
	}
}

final class NumberOneTile: NumberTile {
	init() {
		super.init(imageNamed: "n_1")
	}
}

final class NumberTwoTile: NumberTile {
	init() {
		super.init(imageNamed: "n_2")
	}
}

final class NumberThreeTile: NumberTile {
	init() {
		super.init(imageNamed: "n_3")
	}
}

final class NumberFourTile: NumberTile {
	init() {
		super.init(imageNamed: "n_4")
	}
}

final class NumberFiveTile: NumberTile {
	init() {
		super.init(imageNamed: "n_5")
	}
}

final class NumberSixTile: NumberTile {
	init() {
		super.init(imageNamed: "n_6")
	}
}

final class NumberSevenTile: NumberTile {
	init() {
		super.init(imageNamed: "n_7")
	}
}

final class NumberEightTile: NumberTile {
	init() {
		super.init(imageNamed: "n_8")
	}
}

final class NumberNineTile: NumberTile {
	init() {
		super.init(imageNamed: "n_9")
	}
}
