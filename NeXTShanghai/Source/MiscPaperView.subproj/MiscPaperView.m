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
#define MISC_PAPERVIEW_CLASSNAME "MiscPaperView"


@implementation MiscPaperView

+ initialize
{
	// Initialize the current version number which is used when archiving 
	// objects. This way we will be able to read all versions if we are 
	// careful.

	if( self == [MiscPaperView class] )
		[self setVersion:MISC_PAPERVIEW_VERSION];
		
	return self;
}

- initFrame:(const NXRect *)frameRect
{
	// Designated initilizer. We will set allow resizing by default and
	// we will draw in Lightgray if we have to swap 'nil' in.

	self = [super initFrame:frameRect];
	if( !self ) return self;

	// By default will draw a simple horizontal light gray grid with a dark
	// gray right side border.

	gridColor = NX_COLORLTGRAY;
	gridType = Misc_PaperGridHorizontal;
	gridOrigin = Misc_PaperGridStartsUpperLeft;
	gridVertOffset = gridHorOffset = 20;

	sidelineColor = NX_COLORDKGRAY;
	sidelineType = Misc_PaperSidelineRight;
	sidelineOffset = 4;

	return self;
}

- setGridColor:(NXColor)color
{
	gridColor = color;
	return self;
}

- (NXColor)gridColor
{
	return gridColor;
}

- setGridType:(int)aType withOrigin:(int)theOrigin
{
	gridType = aType;
	gridOrigin = theOrigin;
	return self;
}

- (int)gridType
{
	return gridType;
}

- (int)gridOrigin
{
	return gridOrigin;
}

- setGridSizeVertical:(int)vert horizontal:(int)hor
{
	// Well there has to be some progress so forbit useless offsets

	if( vert < 1 ) vert = 1;
	if( hor < 1 ) hor = 1;

	gridVertOffset = vert;
	gridHorOffset = hor;

	return self;
}

- (int)verticalGridSize
{
	return gridVertOffset;
}

- (int)horizontalGridSize
{
	return gridHorOffset;
}

- setSidelineColor:(NXColor)color
{
	sidelineColor = color;
	return self;
}

- (NXColor)sidelineColor
{
	return sidelineColor;
}

- setSidelineType:(int)aType
{
	sidelineType = aType;
	return self;
}

- (int)sidelineType
{
	return sidelineType;
}

- setSidelineOffset:(int)offset
{
	sidelineOffset = offset;
	return self;
}

- (int)sidelineOffset
{
	return sidelineOffset;
}

- drawSelf:(const NXRect *)rects :(int)rectCount
{	
	float	xMin;
	float	xMax;
	float	yMin;
	float	yMax;

	float	offset;
	float	coord;
	int		i;
	int		count;

	[super drawSelf:rects :rectCount];

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

	PSsetlinewidth( 1.0 );
	NXSetColor( gridColor );

	if( gridType & Misc_PaperGridHorizontal )
	{
		count = bounds.size.height / gridVertOffset;

		// If we start from the top then the values are different...

		if( gridOrigin & Misc_PaperGridStartsLow )
		{
			coord = yMin - 1;
			offset = gridVertOffset;
		}
		else
		{
			coord = yMax + 1;
			offset = -gridVertOffset;
		}
		for( i=0; i<count; i++ )
		{
			coord += offset;
			PSmoveto( xMin, coord );
			PSlineto( xMax, coord );
			PSstroke();
		}
	}

	// Now lets do the same for Vertical lines.

	if( gridType & Misc_PaperGridVertical )
	{
		count = bounds.size.width / gridHorOffset;

		// If we start from the left side then the values are different...

		if( gridOrigin & Misc_PaperGridStartsRight )
		{
			coord = xMax + 1;
			offset = -gridHorOffset;
		}
		else
		{
			coord = xMin - 1;
			offset = gridHorOffset;
		}
		for( i=0; i<count; i++ )
		{
			coord += offset;
			PSmoveto( coord, yMin );
			PSlineto( coord, yMax );
			PSstroke();
		}
	}	

	// Now draw the borders..

	NXSetColor( sidelineColor );
	
	if( sidelineType & Misc_PaperSidelineTop )
	{
		PSmoveto( xMin, yMax - sidelineOffset );
		PSlineto( xMax, yMax - sidelineOffset );
		PSstroke();
	}

	if( sidelineType & Misc_PaperSidelineBottom )
	{
		PSmoveto( xMin, yMin + sidelineOffset );
		PSlineto( xMax, yMin + sidelineOffset );
		PSstroke();
	}

	if( sidelineType & Misc_PaperSidelineLeft )
	{
		PSmoveto( xMin + sidelineOffset, yMin );
		PSlineto( xMin + sidelineOffset, yMax );
		PSstroke();
	}

	if( sidelineType & Misc_PaperSidelineRight )
	{
		PSmoveto( xMax - sidelineOffset, yMin );
		PSlineto( xMax - sidelineOffset, yMax );
		PSstroke();
	}

	return self;
}

- read:(NXTypedStream *)stream
{
	int  version;
  
	[super read:stream];
	
	version = NXTypedStreamClassVersion( stream, MISC_PAPERVIEW_CLASSNAME );
	
	switch( version )
	{
		case 0:
			gridColor = NXReadColor( stream );
			NXReadType( stream, "i", &gridType );
			NXReadType( stream, "i", &gridOrigin );
			NXReadType( stream, "i", &gridVertOffset );
			NXReadType( stream, "i", &gridHorOffset );

			sidelineColor = NXReadColor( stream );
			NXReadType( stream, "i", &sidelineType );
			NXReadType( stream, "i", &sidelineOffset );
			break;
		
		default:
			break;
	}

	return self;
}

- write:(NXTypedStream *)stream
{
	[super write:stream];

	NXWriteColor( stream, gridColor );
	NXWriteType( stream, "i", &gridType );
	NXWriteType( stream, "i", &gridOrigin );
	NXWriteType( stream, "i", &gridVertOffset );
	NXWriteType( stream, "i", &gridHorOffset );

	NXWriteColor( stream, sidelineColor );
	NXWriteType( stream, "i", &sidelineType );
	NXWriteType( stream, "i", &sidelineOffset );

	return self;
}

@end
