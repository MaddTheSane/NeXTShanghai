
/*
 * This is the base class for tiles.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	<AppKit/NSImage.h>
#import	<AppKit/NSView.h>


/// Some tiles need to be shifted by this
/// amount so that a 3D effect can be
/// acheived.
#define	TILE_SHIFT	5
#define	SMALLTILE_SHIFT	2


/// Each tile is a square.  This constant
/// reflects the pixels high and wide for
/// a tile.
#define	TILE_WIDTH	56
#define	TILE_WIDTH_WITH_SHADOW	62
#define	TILE_HEIGHT	64

/// For tile count icons...
#define	SMALLTILE_WIDTH		28
#define	SMALLTILE_HEIGHT	32


//! This is the base class for tiles.
class Tile {

protected:
	//! This is a Image object which is
	//! loaded with a tiff image and used
	//! to display a tile.
	NSImage	*my_tile_image;
	//! This member function is called by
	//! subclasses to load a tiff file for
	//! tile rendering.
	void	loadImageFromFile( NSImageName );

protected:
	//! This function does the actual drawing of
	//!	an image to a point on the board.  All
	//!	of the \c drawImage() routine call this.
	//! @discussion The first parameter is a point on the
	//!	board where the tile is drawn, the
	//!	second parameter is the composite
	//!	operation.
	void	compositeImage( NSPoint, NSCompositingOperation );
public:
	//! This member function is called by the
	//! Board View to composite the tile a
	//! a location within the view. (The focus
	//! of the view must have been locked
	//! previously.)
	//! @discussion This member function must be implemented
	//! in the subclasses since game tiles
	//! can be highlighted.
	virtual void	drawImage( NSPoint ) = 0;

public:
	Tile( void );
	virtual ~Tile( void );
};

