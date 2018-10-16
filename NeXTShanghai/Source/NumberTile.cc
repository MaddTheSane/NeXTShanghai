
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"NumberTile.h"


void NumberTile::drawImage( NXPoint aPoint ) {

// Arrggll...NX_DOVER is a flag for selection...see the Tile implemetation.
// Its not a drawing Mode...never...

	compositeImage( aPoint, NX_DOVER );
}



