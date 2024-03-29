
/*
 * This is the base class for tiles that are
 *	used on the game board.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#ifndef __NeXTSHANGHAI_GAMETILES_H__
#define __NeXTSHANGHAI_GAMETILES_H__

#include "Tile.h"

extern "C" {
#import	<objc/objc.h>
}


/// This enumerated type is used to
/// identify tiles by type.
///
/// These types are used to identify
/// that two peices are equal.  If equal
/// they can be removed from the board.
typedef enum GAME_TYLE_TYPE {
	EAST_WIND,		SOUTH_WIND,		WEST_WIND,		NORTH_WIND,
	
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
					

/*!
 * This is the base class for tiles that are
 *	used on the game board.
 */
class GameTile : public Tile {

private:
	/// This is a flag which indicates wheather
	/// the tile has been selected.  If a tile
	/// is selected it's image is shown
	/// in reverse highlighting.
	BOOL		selected;
public:
	inline const BOOL isSelected(void) {
		return	selected;
	}
	void		setSelected(BOOL flag) {
		selected = flag;
	}

protected:
	/// This variable holds the tile's type.  It
	/// is assigned in the constructor of a
	/// a subclass.
	TILE_TYPE	my_tile_type;
public:
	inline const TILE_TYPE	tileType(void) {
		return my_tile_type;
	}
	const BOOL		isTileType(TILE_TYPE aType);
	

private:
	/// Those tiles then determine if they are
	/// selectable.
	BOOL	selectable;
public:
	inline const BOOL isSelectable(void) {
		return selectable;
	}
	void	setSelectable(BOOL flag) {
		selectable = flag;
	}

private:
	/// A Tile Removed from the Game Board
	/// is not drawn on the board and doesn't
	/// prohibit the surrounding Tiles from
	/// being selectable.
	BOOL	removed;
	BOOL	touched;
public:
	inline const BOOL isRemoved(void) {
		return removed;
	}
	void	setRemoved(BOOL flag) {
		removed = flag;
	}
	inline const BOOL gotTouched(void) {
		return touched;
	}
	void	markTouched(BOOL flag) {
		touched = flag;
	}

public:
	/// Game tiles highlight themselves if
	/// they are selected.
	virtual void drawImage(NSPoint aPoint) final;


protected:
	GameTile(TILE_TYPE the_tile_type) : selected(NO), selectable(NO), touched(NO), my_tile_type(the_tile_type) {}

};

#endif
