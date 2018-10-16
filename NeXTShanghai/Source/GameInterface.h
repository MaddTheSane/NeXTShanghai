
/*
 * This class is an interface between the Objective-C GUI
 *	interface and two of the game's key objects,  the Tile Count Manager
 *	and Game Coordinator.
 *
 * The source file is an Objective-C object but must be
 *	compiled with cc++.  It is the hack file.
 *
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import <Foundation/NSObject.h>
#import	<AppKit/NSWindow.h>

#import	"GameBoardView.h"
#import	"TileCountView.h"


@interface GameInterface:NSObject
{
												// These variables are outlets.
												//	They include the game window
												//	and two views that display tiles.
    IBOutlet NSWindow*		window;
    IBOutlet GameBoardView*	gameBoardView;
    IBOutlet TileCountView*	tileCountView;
												// These are actually C++ objects.
												//	They are casted from void* type
												//	to their respective object when
												//	accesses.  
												// This is done because this header
												//	file is compiled with the Objective-C
												//	compiler and the source is compiled 
												//	with the C++.
	void			*gameCoordinator,
					*tileCountManager;
												// This flag is used to prevent draw messages
												//	from being sent to the C++ object before
												//	the application has finished initializing.
	BOOL			application_initialized;
}

												// This is the designated initializer
												//	for this class.  This method creates
												//	the Game Coordinator which sets off
												//	a chain reaction of object creation.
- (id)init;
												// This object is the delegate of the
												//	application.  This method completes
												//	the initialization by creating the
												//	Tile Count Manager and Game Coordinator.
- appDidInit:sender;
												// These methods are targets of buttons 
												//	and views.  The interface translates
												//	the Objective-C calls to C++ calls of
												//	the apprpriate object.
- undoClick:sender;
- helpClick:sender;
- againClick:sender;
- newClick:sender;
												// These are interface methods
												//	between the Game Board's
												//	view and the Game Coordinator.
- gameBoardDraw;
- click:( const NXPoint * )aPoint;
- doubleClick:( const NXPoint * )aPoint;
												// These are interface methods
												//	between the Time Count's view
												//	and the Tile Count Manager.
- tileCountDraw;

@end
