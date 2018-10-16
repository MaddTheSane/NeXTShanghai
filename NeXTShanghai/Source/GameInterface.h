
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
}

//! This is the designated initializer
//! for this class.  This method creates
//! the Game Coordinator which sets off
//! a chain reaction of object creation.
- (id)init;
												// This object is the delegate of the
												//	application.  This method completes
												//	the initialization by creating the
												//	Tile Count Manager and Game Coordinator.
- (void)awakeFromNib;
												// These methods are targets of buttons 
												//	and views.  The interface translates
												//	the Objective-C calls to C++ calls of
												//	the apprpriate object.
- (IBAction)undoClick:sender;
- (IBAction)helpClick:sender;
- (IBAction)againClick:sender;
- (IBAction)newClick:sender;
												// These are interface methods
												//	between the Game Board's
												//	view and the Game Coordinator.
- (void)gameBoardDraw;
- (void)click:(NSPoint)aPoint;
- (void)doubleClick:(NSPoint)aPoint;
//! These are interface methods
//! between the Time Count's view
//! and the Tile Count Manager.
- (void)tileCountDraw;

@end
