
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"Tile.h"

#import	<Cocoa/Cocoa.h>

#include <cassert>
#include <cstdlib>
#include <cstring>

/// This is a subdirectory within
/// the application where the tile
/// tiff images are stored.
#define	TILE_TIFF_DIRECTORY	@"NeXTmj"


void Tile::loadImageFromFile(NSString* aFile) {
	NSString *tileName = [TILE_TIFF_DIRECTORY stringByAppendingPathComponent:aFile];
	my_tile_image = [NSImage imageNamed:tileName];
}

void Tile::compositeImage(NSPoint aPoint, NSCompositingOperation aMode) {
	// HACK: We use the compos Mode to check the tiles state... that's stupid.
	// Sorry will change that later...
	// NSCompositingOperationDestinationOver means... no background please...
	
	if (aMode == NSCompositingOperationCopy) {
		[[NSImage imageNamed:TILE_TIFF_DIRECTORY @"/Tile"] drawAtPoint:aPoint fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1];
	} else if (aMode != NSCompositingOperationDestinationOver) {
		[[NSImage imageNamed:TILE_TIFF_DIRECTORY @"/TileH"] drawAtPoint:aPoint fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1];
	}

	if (aMode != NSCompositingOperationDestinationOver) {
		aPoint.x += 2;
		aPoint.y += 6;
	}
	[my_tile_image drawAtPoint:aPoint fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1];
}
