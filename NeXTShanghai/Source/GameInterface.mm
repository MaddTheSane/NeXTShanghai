
/* Generated by Interface Builder */

#import	"TileCountManager.h"
#import	"GameCoordinator.h"

#import "GameInterface.h"

#include <cassert>


@implementation GameInterface
{
    GameCoordinator     *gameCoordinator;
    TileCountManager    *tileCountManager;
    //!This flag is used to prevent draw messages
    //!from being sent to the C++ object before
    //!the application has finished initializing.
    BOOL            application_initialized;
}

- init {

	self = [ super init ];
	
	gameCoordinator		= NULL;
	tileCountManager	= NULL;
	
	return self;
}



- (void)awakeFromNib {
	[super awakeFromNib];

	assert( tileCountView );
	assert( gameBoardView );
	
	tileCountManager = new TileCountManager( tileCountView );
	gameCoordinator = new GameCoordinator( gameBoardView, tileCountManager );
	
	application_initialized = YES;
	
	[ tileCountView setNeedsDisplay:YES ];
	[ gameBoardView setNeedsDisplay:YES ];
}


- (void)undoClick:sender {
	gameCoordinator->undoClick();
}


- (void)helpClick:sender {
	gameCoordinator->helpClick();
}


- (void)againClick:sender {
	gameCoordinator->againClick();
}

- (void)newClick:sender {
	gameCoordinator->newClick();
}


- (void)gameBoardDraw {
	if( application_initialized )
		gameCoordinator->drawImage();
}


- (void)tileCountDraw {
	if( application_initialized )
		tileCountManager->drawImage();
}


- (void)click:(NSPoint)aPoint {
	gameCoordinator->click( aPoint );
}


- (void)doubleClick:(NSPoint)aPoint {
	gameCoordinator->doubleClick( aPoint );
}


@end
