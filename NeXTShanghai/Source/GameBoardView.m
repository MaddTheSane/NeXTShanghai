
/* Generated by Interface Builder */

/*
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import "GameBoardView.h"
#import	"GameInterface.h"
#import <AppKit/AppKit.h>

#include <assert.h>


@implementation GameBoardView


- (void)mouseDown:(NSEvent *)theEvent {
	NSPoint	clickPoint = theEvent.locationInWindow;
	
	clickPoint = [self convertPoint:clickPoint fromView:nil];
	
	if (theEvent.clickCount == 1) {
		[gameInterface click:clickPoint];
	} else if (theEvent.clickCount == 2) {
		[gameInterface doubleClick:clickPoint];
	}
}


- (void)drawRect:(NSRect)dirtyRect {

	
	assert( gameInterface );
	
//	PSsetgray( NX_WHITE );
//	NXRectFillList( rects, rectCount );
	[gameInterface gameBoardDraw ];
}


@end
