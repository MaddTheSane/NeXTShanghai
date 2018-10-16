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

#define Misc_PaperGridNone			0
#define Misc_PaperGridHorizontal	1
#define Misc_PaperGridVertical		2

#define Misc_PaperSidelineNone		0
#define Misc_PaperSidelineTop		1
#define Misc_PaperSidelineBottom	2
#define Misc_PaperSidelineLeft		4
#define Misc_PaperSidelineRight		8

#define Misc_PaperGridStartsRight	1
#define Misc_PaperGridStartsLow		2

// The above bitfield defines can be combined to the following flags:

typedef enum
{
	Misc_PaperGridStartsUpperLeft = 0,
	Misc_PaperGridStartsUpperRight,
	Misc_PaperGridStartsLowerLeft,
	Misc_PaperGridStartsLowerRight
} Misc_PaperGridOrigin;

@interface MiscPaperView:MiscColorView 
{
	int		gridType;
	int		gridVertOffset;
	int		gridHorOffset;
	NXColor	gridColor;
	int		gridOrigin;
	
	int		sidelineType;
	int		sidelineOffset;
	NXColor	sidelineColor;
}

+ initialize;
- initFrame:(const NXRect *)frameRect;

- setGridColor:(NXColor)color;
- (NXColor)gridColor;
- setGridType:(int)aType withOrigin:(int)theOrigin;
- (int)gridType;
- (int)gridOrigin;
- setGridSizeVertical:(int)vert horizontal:(int)hor;
- (int)verticalGridSize;
- (int)horizontalGridSize;

- setSidelineColor:(NXColor)color;
- (NXColor)sidelineColor;
- setSidelineType:(int)aType;
- (int)sidelineType;
- setSidelineOffset:(int)offset;
- (int)sidelineOffset;

- drawSelf:(const NXRect *)rects :(int)rectCount;

- read:(NXTypedStream *)stream;
- write:(NXTypedStream *)stream;

@end
