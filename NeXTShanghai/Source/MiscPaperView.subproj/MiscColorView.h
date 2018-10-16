//		Written by Thomas Engel Copyright (c) 1995 by Thomas Engel.
//				Version 1.0.  All rights reserved.
//
//		This notice may not be removed from this source code.
//
//	This object is included in the MiscKit by permission from the author
//	and its use is governed by the MiscKit license, found in the file
//	"LICENSE.rtf" in the MiscKit distribution.  Please refer to that file
//	for a list of all applicable permissions and restrictions.
//	

#import <appkit/appkit.h>

@interface MiscColorView:NSView
{
	NSColor	*backgroundColor;
	BOOL		sameColorAsDesktop;
}

+ (void)initialize;
- (instancetype)initWithFrame:(NSRect)frameRect;

@property (strong) NSColor *backgroundColor;
- (void)setUseSameColorAsDesktop:(BOOL)flag;
- (BOOL)hasSameColorAsDesktop;

- (void)drawRect:(NSRect)dirtyRect;

//- read:(NXTypedStream *)stream;
//- write:(NXTypedStream *)stream;

@end
