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

#define MISC_COLORVIEW_VERSION 0
#define MISC_COLORVIEW_CLASSNAME "MiscColorView"


@implementation  MiscColorView

+ (void)initialize
{
	// Initialize the current version number which is used when archiving 
	// objects. This way we will be able to read all versions if we are 
	// careful.

	if( self == [MiscColorView class] )
		[self setVersion:MISC_COLORVIEW_VERSION];
}

- (instancetype)initWithFrame:(NSRect)frameRect
{
	// Designated initilizer. We will set allow resizing by default and
	// we will draw in Lightgray if we have to swap 'nil' in.

	self = [super initWithFrame:frameRect];
	if( !self ) return self;

	// By default we have a white background and don't focus on the
	// desktops background.

	backgroundColor = [NSColor whiteColor];

	return self;
}

@synthesize backgroundColor;
@synthesize sameColorAsDesktop;

- (void)setUseSameColorAsDesktop:(BOOL)flag
{
	self.sameColorAsDesktop = flag;
}

- (void)drawRect:(NSRect)dirtyRect
{
	const char *	defaultVal;
	float	red;
	float	green;
	float	blue;
	
	if( sameColorAsDesktop )
	{
		// Read the desktops color form the defaults database.

		defaultVal = /*NXReadDefault( "NeXT1", "BackgroundColor" );*/ NULL;

		if( defaultVal != NULL ) {
			sscanf( defaultVal, "%f %f %f",&red, &green, &blue );

			// If there is no default we will take a shade of blue.
			// This seems to be the color NeXT uses as a default.

		} else {
			red = 0.333333;
			green = 0.333333;
			blue = 0.466666;
		}
		[[NSColor colorWithCalibratedRed:red green:green blue:blue alpha:1] set];
	} else {
		[backgroundColor set];
	}

	NSRectFill( self.bounds );
}

#if 0
- read:(NXTypedStream *)stream
{
	int  version;
  
	[super read:stream];
	
	version = NXTypedStreamClassVersion( stream, MISC_COLORVIEW_CLASSNAME );
	
	switch( version )
	{
		case 0:
			backgroundColor = NXReadColor( stream );
			NXReadType( stream, "c", &sameColorAsDesktop );
			break;
		
		default:
			break;
	}

	return self;
}

- write:(NXTypedStream *)stream
{
	[super write:stream];

	NXWriteColor( stream, backgroundColor );
	NXWriteType( stream, "c", &sameColorAsDesktop );

	return self;
}
#endif

@end
