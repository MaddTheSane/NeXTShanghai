
/*
 * This is the base class for tiles that are
 *	used on the game board.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"Tile.h"

extern "Objective-C" {
#import	<objc/objc.h>
}


												// This enumerated type is used to
												//	identify tiles by type.
												// These types are used to identify
												//	that two peices are equal.  If equal
												//	they can be removed from the board.
	typedef enum {	EAST_WIND,		SOUTH_WIND,		WEST_WIND,		NORTH_WIND,
					
					SEASON,			FLOWER,
					
					CIRCLE_1,		CIRCLE_2,		CIRCLE_3,		CIRCLE_4,
					CIRCLE_5,		CIRCLE_6,		CIRCLE_7,		CIRCLE_8,
					CIRCLE_9,
					
					BAMBOO_1,		BAMBOO_2,		BAMBOO_3,		BAMBOO_4,
					BAMBOO_5,		BAMBOO_6,		BAMBOO_7,		BAMBOO_8,
					BAMBOO_9,
					
					CHARACTER_1,	CHARACTER_2,	CHARACTER_3,	CHARACTER_4,
					CHARACTER_5,	CHARACTER_6,	CHARACTER_7,	CHARACTER_8,
					CHARACTER_9,
					
					RED,			WHITE,			GREEN
	} TILE_TYPE;
					
					
class GameTile : public Tile {

private:
												// This is a flag which indicates wheather
												//	the tile has been selected.  If a tile
												//	is selected it's image is shown
												//	in reverse highlighting.
	BOOL		selected;
public:
	BOOL		isSelected( void );
	void		setSelected( BOOL );

protected:
												// This variable holds the tile's type.  It
												//	is assigned in the constructor of a
												//	a subclass.
	TILE_TYPE	my_tile_type;
public:
	TILE_TYPE	tileType( void );
	BOOL		isTileType( TILE_TYPE aType );
	

private:
												// Those tiles then determine if they are
												//	selectable.
	BOOL	selectable;
public:
	BOOL	isSelectable( void );	
	void	setSelectable( BOOL );

private:
												// A Tile Removed from the Game Board
												//	is not drawn on the board and doesn't
												//	prohibit the surrounding Tiles from
												//	being selectable.
	BOOL	removed;
	BOOL	touched;
public:
	BOOL	isRemoved( void );
	void	setRemoved( BOOL );
	BOOL	gotTouched( void );
	void	markTouched( BOOL );

public:
												// Game tiles highlight themselves if
												//	they are selected.
	virtual void	drawImage( NXPoint );


public:
	GameTile( void );

};

