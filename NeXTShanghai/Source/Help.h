
/*
 * This class is used to provide help
 *	to the operator.
 *
 * Help is provided by a momentary push button on the window.  When first 
 *	clicked a search index is set to 0.  Tile searches are performed by searching 
 *	from the current search index to the end of the tile list.  If a match isn't
 *	found the index is incremented and the scan starts anew until either a match
 *	is found or all tiles have been exhausted.  When a match is found the two tiles 
 *	are highlighted.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"GameTileArray.h"
#import	"TileDescriptionArray.h"
#import	"TileIterator.h"

/*!
 * This class is used to provide help
 *	to the operator.
 *
 *	Help is provided by a momentary push button on the window.  When first
 *	clicked a search index is set to 0.  Tile searches are performed by searching
 *	from the current search index to the end of the tile list.  If a match isn't
 *	found the index is incremented and the scan starts anew until either a match
 *	is found or all tiles have been exhausted.  When a match is found the two tiles
 *	are highlighted.
 */
class Help {
private:
	/// This variable holds the current search
	/// index into the Game Board tile matrix.
	///
	/// Scans for tile matches begin at this
	/// value + 1.
	TileIterator			my_iterator;
	/// Used to search through the tiles on
	/// the Game Board looking for tiles
	TileDescriptionArray	tile_descriptions;
	/// This method uses the iterator to search
	/// a Game Tile array for a tile that is
	/// selectable.
	///
	/// This method returns a -1 if no tile is
	/// found.
	int						findNextSelectableTile( GameTileArray& );
	/// This flag indicates wheather help
	/// has any tiles selected on the Game
	/// Board.
	BOOL					tiles_selected;

public:
	
	/// This method is indirectly called when the
	/// help button is pressed on the game
	/// window.
	/// Objective-C to C++ interface routines.
	void	helpClick( GameTileArray& );
	/// This method is called every time a
	/// tile is clicked.  It resets the search
	/// index.  When a tile is clicked we
	/// assume that help is no longer needed.
	void	resetHelp( void );
	/// This method returns the value of
	/// the \c tiles_selected variable.
	///
	/// This method is used to indicate
	/// wheather Help has any tiles selected
	/// on the Game Board.  It is set in
	/// \c helpClick() and cleared in \c resetHelp() .
	///
	/// This method is intended for another
	/// object to make a descision to unselect
	/// tiles on the Game Board.
	BOOL	isSelected( void );
};

