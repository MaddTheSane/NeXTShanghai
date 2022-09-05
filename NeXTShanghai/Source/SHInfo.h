/* SHInfo.h				 
 *
 * Handles the Icon switching in the Info panel. Just basic actions.
 *
 * Usage: Just create this object and makeItKeyAndFront:.
 *
 * Note: To make the whole thing a little bit nicer I added some animation 
 *       stuff. In first place it was some kind of NeXTSTEP learning action. My
 *		 first step in the OOP-area. Doing this little Info object was so easy. 
 *		 NeXTSTEP is realy realy nice....no...it´s great.
 * 		 The Info is unique for every App so I made not attempt to design a
 * 		 very reusable class. Anyway...it might be reused.
 *
 * Written by: 		Thomas Engel
 * Created:    		25.10.1993 (Copyleft)
 * Last modified: 	07.05.1994
 */

#import <AppKit/AppKit.h>

//! Handles the Icon switching in the Info panel. Just basic actions.
@interface SHInfo:NSObject <NSAnimationDelegate>
{
	IBOutlet NSPanel *panel;
	IBOutlet id		imageButton;
	IBOutlet NSTextField *textField;
	
	int		currentIcon;

	IBOutlet id		appImage;			// Buttons containing the images.
	IBOutlet NSTextField *appText;			// ...plus text.
	IBOutlet id		tomiImage;
	IBOutlet NSTextField *tomiText;
	IBOutlet id		wolfyImage;
	IBOutlet NSTextField *wolfyText;
		
	BOOL	animationRunning;
	NSAnimation		*currentAnimator;
	NSAnimation		*someAnimator;		// Objects that do some nice animations
}

- init;

- (IBAction)makeKeyAndOrderFront:(id)sender;

// Switching between icons. Triggered by buttons inside the Panel.

- (IBAction)switchToNextIcon:(id)sender;
- (IBAction)switchToAppIcon:(id)sender;
- (IBAction)switchToTomiIcon:(id)sender;
- (IBAction)switchToWolfyIcon:(id)sender;

- (void)_switchTo:(int)aStyle with:aImageButton :(NSTextField*)aTextField;

- (IBAction)startRandomAnimation:(id)sender;

// Delegatemethods to stop a animation properly even when our window closes.
// Attention. We´re the animators delegate and the windows delegate. 

- (void)windowWillClose:sender;

@end

/*
 * History: 07.05.94 Switched to BBInfo.
 *
 *			19.01.94 Added the textFields.
 *
 *
 * Bugs: - No
 */
