
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTile.h"

#include <cassert>
extern "C" {
#include "mj.h"
}

BOOL GameTile::isTileType(TILE_TYPE aType) {
	return aType == my_tile_type ? YES : NO ;
}

void GameTile::drawImage(NSPoint aPoint) {
	if (selected) {
		compositeImage(aPoint, NSCompositingOperationPlusDarker);
	} else {
		compositeImage(aPoint, NSCompositingOperationCopy);
	}
}
