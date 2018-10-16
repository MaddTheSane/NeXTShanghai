
/* Generated by Interface Builder */

/*
 * An interface view is simple a base class for
 *	Objective-C views that interface with the Game Interface
 *	object.
 *
 * The sole purpose of this object is to hold a instance
 *	pointer to the Game Interface object.
 *
 *
 $Author$
 $Header$
 *
 $Log$
 */


#import <appkit/NSView.h>

@class GameInterface;

@interface InterfaceView:NSView {

												// This is the Game Interface
												//	object.  We have to use a generic ID
												//	here otherwise the header files
												//	would be cross dependent.
    GameInterface	*gameInterface;
}

												// Sets up some additional View
												//	defaults.
- (instancetype)initWithFrame:(NSRect)frameRect;


@end
