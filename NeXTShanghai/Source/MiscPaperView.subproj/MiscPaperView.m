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

#import "MiscPaperView.h"

#define MISC_PAPERVIEW_VERSION 0
#define MISC_PAPERVIEW_CLASSNAME @"MiscPaperView"


@implementation MiscPaperView

+ (void)initialize
{
	// Initialize the current version number which is used when archiving 
	// objects. This way we will be able to read all versions if we are 
	// careful.

	if( self == [MiscPaperView class] )
		[self setVersion:MISC_PAPERVIEW_VERSION];
}

- (instancetype)initWithFrame:(NSRect)frameRect
{
	// Designated initilizer. We will set allow resizing by default and
	// we will draw in Lightgray if we have to swap 'nil' in.
	
	if (self = [super initWithFrame:frameRect]) {
		// By default will draw a simple horizontal light gray grid with a dark
		// gray right side border.
		
		gridColor = [NSColor lightGrayColor];
		gridType = Misc_PaperGridHorizontal;
		gridOrigin = Misc_PaperGridStartsUpperLeft;
		gridVertOffset = gridHorOffset = 20;
		
		sidelineColor = [NSColor darkGrayColor];
		sidelineType = Misc_PaperSidelineRight;
		sidelineOffset = 4;
	}
	return self;
}

@synthesize gridColor;

- (void)setGridType:(Misc_PaperGridType)aType withOrigin:(Misc_PaperGridOrigin)theOrigin
{
	gridType = aType;
	gridOrigin = theOrigin;
}

@synthesize gridType;
@synthesize gridOrigin;

- (void)setGridSizeVertical:(int)vert horizontal:(int)hor
{
	// Well there has to be some progress so forbid useless offsets

	if (vert < 1) {
		vert = 1;
	}
	if (hor < 1) {
		hor = 1;
	}

	gridVertOffset = vert;
	gridHorOffset = hor;
}

@synthesize verticalGridSize=gridVertOffset;
@synthesize horizontalGridSize=gridHorOffset;
@synthesize sidelineColor;
@synthesize sidelineType;
@synthesize sidelineOffset;

- (void)drawRect:(NSRect)rects
{	
	CGFloat	xMin;
	CGFloat	xMax;
	CGFloat	yMin;
	CGFloat	yMax;
    NSRect bounds = self.bounds;

	CGFloat	offset;
	CGFloat	coord;
	int		count;

	[super drawRect:rects];

	xMin = bounds.origin.x;
	xMax = bounds.origin.x + bounds.size.width - 1;
	yMin = bounds.origin.y;
	yMax = bounds.origin.y + bounds.size.height - 1;

	// BUG: Please tell me whats wrong ?
	// Well everybody would think that this should be the right calculation ?
	// At least I do...but somehow you have to adjust the Y values of the bounds
	// because otherwise you'll start 1 pixel too low (out side the view) and
	// you will end 1 pixel too early ????. 
	// Perhaps I missed some kind of stroke adjust ?

	yMin += 1;
	yMax += 1;

	// Draw the grid first...but lets see where we have to start from
	// and how many lines we need.

    [gridColor set];

	NSBezierPath *lines = [NSBezierPath bezierPath];
	lines.lineWidth = 1;
	
	if (gridType & Misc_PaperGridHorizontal) {
		count = bounds.size.height / gridVertOffset;

		// If we start from the top then the values are different...

		if (gridOrigin & Misc_PaperGridStartsLow) {
			coord = yMin - 1;
			offset = gridVertOffset;
		} else {
			coord = yMax + 1;
			offset = -gridVertOffset;
		}
		
		for (int i=0; i<count; i++) {
			coord += offset;
			[lines moveToPoint:NSMakePoint(xMin, coord)];
			[lines lineToPoint:NSMakePoint(xMax, coord)];
		}
	}

	// Now lets do the same for Vertical lines.

	if (gridType & Misc_PaperGridVertical) {
		count = bounds.size.width / gridHorOffset;

		// If we start from the left side then the values are different...

		if (gridOrigin & Misc_PaperGridStartsRight) {
			coord = xMax + 1;
			offset = -gridHorOffset;
		} else {
			coord = xMin - 1;
			offset = gridHorOffset;
		}
		
		for (int i=0; i<count; i++) {
			coord += offset;
			[lines moveToPoint:NSMakePoint(coord, yMin)];
			[lines lineToPoint:NSMakePoint(coord, yMax)];
		}
	}	
	[lines stroke];

	// Now draw the borders..

	[sidelineColor set];
	lines = [NSBezierPath bezierPath];
	lines.lineWidth = 1.0;
	
	if (sidelineType & Misc_PaperSidelineTop) {
		[lines moveToPoint:NSMakePoint(xMin, yMax - sidelineOffset)];
		[lines lineToPoint:NSMakePoint(xMax, yMax - sidelineOffset)];
	}

	if (sidelineType & Misc_PaperSidelineBottom) {
		[lines moveToPoint:NSMakePoint(xMin, yMin - sidelineOffset)];
		[lines lineToPoint:NSMakePoint(xMax, yMin - sidelineOffset)];
	}

	if (sidelineType & Misc_PaperSidelineLeft) {
		[lines moveToPoint:NSMakePoint( xMin + sidelineOffset, yMin )];
		[lines lineToPoint:NSMakePoint( xMin + sidelineOffset, yMax )];
	}

	if (sidelineType & Misc_PaperSidelineRight) {
		[lines moveToPoint:NSMakePoint( xMax - sidelineOffset, yMin )];
		[lines lineToPoint:NSMakePoint( xMax - sidelineOffset, yMax )];
	}
	[lines stroke];
}

#define MISCPVGridColor @"MiscPaperViewGridColor"
#define MISCPVGridType @"MiscPaperViewGridType"
#define MISCPVGridOrigin @"MiscPaperViewGridOrigin"
#define MISCPVGridVertOffset @"MiscPaperViewGridVerticalOffset"
#define MISCPVGridHorOffset @"MiscPaperViewGridHorizontalOffset"
#define MISCPVSidelineColor @"MiscPaperViewSidelineColor"
#define MISCPVSidelineType @"MiscPaperViewSidelineType"
#define MISCPVSidelineOffset @"MiscPaperViewSidelineOffset"

- (instancetype)initWithCoder:(NSCoder *)coder
{
	if (self = [super initWithCoder:coder]) {
		if (coder.allowsKeyedCoding) {
			gridColor = [coder decodeObjectOfClass:[NSColor class] forKey:MISCPVGridColor];
			gridType = [coder decodeIntForKey:MISCPVGridType];
			gridOrigin = [coder decodeIntForKey:MISCPVGridOrigin];
			gridVertOffset = [coder decodeIntForKey:MISCPVGridVertOffset];
			gridHorOffset = [coder decodeIntForKey:MISCPVGridHorOffset];
			
			sidelineColor = [coder decodeObjectOfClass:[NSColor class] forKey:MISCPVSidelineColor];
			sidelineType = [coder decodeIntForKey:MISCPVSidelineType];
			sidelineOffset = [coder decodeIntForKey:MISCPVSidelineOffset];
		} else if ([coder versionForClassName:MISC_PAPERVIEW_CLASSNAME] == 0) {
			int tmpInt;
			gridColor = [coder decodeNXColor];
			[coder decodeValueOfObjCType:@encode(int) at:&tmpInt];
			gridType = tmpInt;
			[coder decodeValueOfObjCType:@encode(int) at:&tmpInt];
			gridOrigin = tmpInt;
			[coder decodeValueOfObjCType:@encode(int) at:&tmpInt];
			gridVertOffset = tmpInt;
			[coder decodeValueOfObjCType:@encode(int) at:&tmpInt];
			gridHorOffset = tmpInt;
			
			sidelineColor = [coder decodeNXColor];
			[coder decodeValueOfObjCType:@encode(int) at:&tmpInt];
			sidelineType = tmpInt;
			[coder decodeValueOfObjCType:@encode(int) at:&tmpInt];
			sidelineOffset = tmpInt;
		} else {
			// The defaults
			gridColor = [NSColor lightGrayColor];
			gridType = Misc_PaperGridHorizontal;
			gridOrigin = Misc_PaperGridStartsUpperLeft;
			gridVertOffset = gridHorOffset = 20;
			
			sidelineColor = [NSColor darkGrayColor];
			sidelineType = Misc_PaperSidelineRight;
			sidelineOffset = 4;
		}
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
	NSAssert(coder.allowsKeyedCoding == YES, @"Only keyed coding can be saved!");
	[super encodeWithCoder:coder];
	
	[coder encodeObject:gridColor forKey:MISCPVGridColor];
	[coder encodeInt:gridType forKey:MISCPVGridType];
	[coder encodeInt:gridOrigin forKey:MISCPVGridOrigin];
	[coder encodeInt:gridVertOffset forKey:MISCPVGridVertOffset];
	[coder encodeInt:gridHorOffset forKey:MISCPVGridHorOffset];

	[coder encodeObject:sidelineColor forKey:MISCPVSidelineColor];
	[coder encodeInt:sidelineType forKey:MISCPVSidelineType];
	[coder encodeInt:sidelineOffset forKey:MISCPVSidelineOffset];
}

@end
