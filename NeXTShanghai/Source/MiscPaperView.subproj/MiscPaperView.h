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

#import "MiscColorView.h"

typedef NS_OPTIONS(unsigned int, Misc_PaperGridType) {
	Misc_PaperGridNone			= 0,
	Misc_PaperGridHorizontal	= 1,
	Misc_PaperGridVertical		= 2
};

typedef NS_OPTIONS(unsigned int, Misc_PaperSideline) {
	Misc_PaperSidelineNone		= 0,
	Misc_PaperSidelineTop		= 1 << 0,
	Misc_PaperSidelineBottom	= 1 << 1,
	Misc_PaperSidelineLeft		= 1 << 2,
	Misc_PaperSidelineRight		= 1 << 3
};

typedef NS_OPTIONS(int, Misc_PaperGridOrigin)
{
	Misc_PaperGridStartsRight	= 1,
	Misc_PaperGridStartsLow		= 2,
	
// The above bitfield defines can be combined to the following flags:

	Misc_PaperGridStartsUpperLeft = 0,
	Misc_PaperGridStartsUpperRight = Misc_PaperGridStartsRight | 0,
	Misc_PaperGridStartsLowerLeft = 0 | Misc_PaperGridStartsLow,
	Misc_PaperGridStartsLowerRight = Misc_PaperGridStartsRight | Misc_PaperGridStartsLow
};

@interface MiscPaperView:MiscColorView 
{
	Misc_PaperGridType		gridType;
	int		gridVertOffset;
	int		gridHorOffset;
	NSColor	*gridColor;
	Misc_PaperGridOrigin		gridOrigin;
	
	Misc_PaperSideline		sidelineType;
	int		sidelineOffset;
	NSColor	*sidelineColor;
}

@property (strong) NSColor *gridColor;
- (void)setGridType:(Misc_PaperGridType)aType withOrigin:(Misc_PaperGridOrigin)theOrigin;
@property (readonly) Misc_PaperGridType gridType;
@property (readonly) Misc_PaperGridOrigin gridOrigin;
- (void)setGridSizeVertical:(int)vert horizontal:(int)hor;
@property (readonly) int verticalGridSize;
@property (readonly) int horizontalGridSize;

@property (strong) NSColor *sidelineColor;
@property Misc_PaperSideline sidelineType;
@property int sidelineOffset;

//- read:(NXTypedStream *)stream;
//- write:(NXTypedStream *)stream;

@end
