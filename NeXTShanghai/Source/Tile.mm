
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"Tile.h"

#import	<AppKit/AppKit.h>

extern "C" {
#import	<assert.h>
#import	<libc.h>
#import	<string.h>
}


												// This is a subdirectory within
												//	the application where the tile
												//	tiff images are stored.
#define	TILE_TIFF_DIRECTORY	"NeXTmj-tiff"


Tile::Tile( void ) {

	my_tile_image = nil;
}

Tile::~Tile( void ) {

	my_tile_image=nil;
}


void Tile::loadImageFromFile( NSString* aFile ) {

	my_tile_image = [NSImage imageNamed:aFile];
}


void Tile::compositeImage( NSPoint aPoint, NSCompositingOperation aMode ) {


	NSRect	r;
	
	// HACK: We use the compos Mode to check the tiles state...thats stupid.
	// Sorry will change that later...
	// NX_DOVER means...no background please...
	
	if( aMode == NSCompositingOperationCopy )
		[ [NXImage findImageNamed:"Tile"] composite:NX_SOVER toPoint:&aPoint ];
	else if( aMode != NX_DOVER )
		[ [NXImage findImageNamed:"TileH"] composite:NX_SOVER toPoint:&aPoint ];

	if( aMode != NSCompositingOperationDestinationOver )
	{
		aPoint.x += 2;
		aPoint.y += 6;
	}
	[my_tile_image drawAtPoint:aPoint fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1];
}


