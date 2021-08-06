
/*
 * This object is the heart of the game.
 *	Many of the standard GUI interface calls pass 
 *	through a translation object and forwarded to this object.
 *
 * This is a rather large object.  It has to coordinate many
 *	functions.
 *
 $Author$
 $Header$
 *
 $Log$
 */

#import	"NumberTileArray.h"

#import	"TileCountView.h"


class TileCountManager {
private:
	/// This is a view which displays the
	/// number of tiles remaining on the
	/// Game Board.  It is passed in the
	/// constructor.
	///
	/// Whenever the tile count changes the
	/// view is marked as needs display.
	///
	/// When a \c drawImage() is received from the
	/// interface object (by virtue of the view
	/// receiving a \c drawSelf:: method) the
	/// number tiles are composited on this
	/// view.
	TileCountView*			my_view;
public:
	/// This method comes from the interface
	/// object and from there the Game Board's
	/// view.  It is called when the view
	/// receives a drawSelf:: method.
	void					drawImage(void);
						
private:
	NumberTileArray			number_array;

private:
	/// This variable holds the number of
	/// peices not removed from the game
	/// board.
	int						count_value;
	/// This method updates the view with
	/// the current count.
	void					updateView(void);
public:
	/// This method resets the count to 144.
	void					resetCount(void);
	/// This method adds to the current
	/// count.
	void					addTwo(void);
	/// This method subtracts two from the
	/// current count.
	void					subtractTwo(void);
	/// This method returns the current count.
	int						count(void);
	/// This method tests to determine if the
	/// Game Board is empty.
	BOOL					isEmpty(void);

public:
	TileCountManager(TileCountView *view);
};
