
/*
 $Author$
 $Header$
 *
 $Log$
 */

#import	"Tile.h"

extern "Objective-C" {
#import	<appkit/appkit.h>
#import	<dpsclient/psops.h>
}

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

	[ my_tile_image free ];
}


void Tile::loadImageFromFile( const char* aFile ) {

	my_tile_image = [NXImage findImageNamed:aFile];
}


void Tile::compositeImage( NXPoint aPoint, int aMode ) {


	NXRect	r;
	
	// HACK: We use the compos Mode to check the tiles state...thats stupid.
	// Sorry will change that later...
	// NX_DOVER means...no background please...
	
	if( aMode == NX_COPY )
		[ [NXImage findImageNamed:"Tile"] composite:NX_SOVER toPoint:&aPoint ];
	else if( aMode != NX_DOVER )
		[ [NXImage findImageNamed:"TileH"] composite:NX_SOVER toPoint:&aPoint ];

	if( aMode != NX_DOVER )
	{
		aPoint.x += 2;
		aPoint.y += 6;
	}
	[ my_tile_image composite:NX_SOVER toPoint:&aPoint ];
}


