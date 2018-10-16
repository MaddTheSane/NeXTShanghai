/* --------------------------------------------------------------------------

Class:			SHInfo
Version:		0.1
File:			SHInfo.m				 

Written by:		Thomas Engel
Created:		17.05.1995	(Copyleft)
Last modified:	17.05.1995


Note:	For a detailed description please read the class documentation.

-------------------------------------------------------------------------- */


#import "SHInfo.h"

#define _InfoShowingAppIcon		1		// please use enum..
#define _InfoShowingTomiIcon	2
#define _InfoShowingWolfyIcon	3

#define _InfoShowingAnimation	4		// let make it a enum..

@implementation SHInfo

- init
{
	self = [super init];
	if( !self ) return self;

	// OK. We really are an object...here we go with our init.

	currentIcon = _InfoShowingAppIcon;
	animationRunning = NO;
	
	return self;
}

- (IBAction)makeKeyAndOrderFront:sender
{
	if( !panel )
	{
        if (![NSBundle loadNibNamed:@"Info" owner:self]) {
            NSAlert *alert = [[NSAlert alloc] init];
            alert.messageText = @"Couldn't load Info.nib";
            alert.informativeText = @"Couldn't load Info.nib";
            
            [alert runModal];
        }
	}
	[panel makeKeyAndOrderFront:self];
}

- (IBAction)switchToNextIcon:sender
{
	switch( currentIcon )
	{
		case _InfoShowingAppIcon:
            [self switchToTomiIcon:self];
		case _InfoShowingTomiIcon:
            [self switchToWolfyIcon:self];
		case _InfoShowingWolfyIcon:
            [self switchToAppIcon:self];
	}
}

- (IBAction)switchToAppIcon:sender
{
    [self _switchTo:_InfoShowingAppIcon with:appImage :appText];
}

- (IBAction)switchToTomiIcon:sender
{
    [self _switchTo:_InfoShowingTomiIcon with:tomiImage :tomiText];
}

- (IBAction)switchToWolfyIcon:sender
{
    [self _switchTo:_InfoShowingWolfyIcon with:wolfyImage :wolfyText];
}

- (void)_switchTo:(int)aStyle with:aImageButton :aTextField
{
	if( !animationRunning && currentIcon != aStyle )
	{
		[imageButton setImage:[aImageButton image]];
		[textField setStringValue:[aTextField stringValue]];
		currentIcon = aStyle;
	}
}

- (IBAction)startRandomAnimation:sender
{
	// if there is no animation running right now...
	
	if( animationRunning ) return;
	
	// register that a animation will run and choose a random animator-obj
	// To be able to switch to a original Image we have to tell this object
	// that if is now shoning the AnimationImages
	
	[self switchToAppIcon:self];
	animationRunning = YES;
	currentIcon = _InfoShowingAnimation;

	currentAnimator = someAnimator;
		
	[currentAnimator setDelegate:self];
	[currentAnimator startAnimation:self];
}

- (IBAction)animationDidStop:sender
{
	// After the animation we have to switch to the original BeakerIcon
	// we are also registered as the animators delegate.

	animationRunning = NO;
	[self switchToAppIcon:self];
}

- (void)windowWillClose:sender
{
	// We´re the InfoPanels delegate. So we can stop an animation even if it
	// has not finished yet.

	if( animationRunning ) [currentAnimator stopAnimation];
}

@end

/*
 * History: 17.05.95 Adjusted the old BBInfo a little.
 *
 *			07.05.94 Switched to BBInfo.
 *
 *			19.01.94 Added the textFields.
 *
 *
 * Bugs: - No
 */
