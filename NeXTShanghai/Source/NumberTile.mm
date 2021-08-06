
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"NumberTile.h"


void NumberTile::drawImage(NSPoint aPoint) {
	// Arrggll...NSCompositingOperationDestinationOver is a flag for selection...see the Tile implemetation.
	// Its not a drawing Mode...never...

	compositeImage(aPoint, NSCompositingOperationDestinationOver);
}
