
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


GameTile::GameTile( void ) {
	selected		= NO;
	selectable		= NO;
	touched			= NO;
}


BOOL GameTile::isSelected( void ) {
	return	selected;
}
	

void GameTile::setSelected( BOOL flag ) {
	selected = flag;
}


BOOL GameTile::gotTouched( void ) {
	return touched;
}


void GameTile::markTouched( BOOL flag ) {
	touched = flag;
}

TILE_TYPE GameTile::tileType( void ) {
	return my_tile_type;
}


BOOL GameTile::isTileType( TILE_TYPE aType ) {
	return aType == my_tile_type ? YES : NO ;
}


BOOL GameTile::isSelectable( void ) {
	return selectable;
}	


void GameTile::setSelectable( BOOL flag ) {
	selectable = flag;
}


BOOL GameTile::isRemoved( void ) {
	return removed;
}	


void GameTile::setRemoved( BOOL flag ) {
	removed = flag;
}


void GameTile::drawImage( NSPoint aPoint ) {
	if( selected )
		compositeImage( aPoint, NSCompositingOperationPlusDarker );
	else
		compositeImage( aPoint, NSCompositingOperationCopy );
}
