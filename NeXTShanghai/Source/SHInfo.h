/* SHInfo.h				 
 *
 * Handles the Icon switching in the Info panel. Just basic actions.
 *
 * Usage: Just create this object and makeItKeyAndFront:.
 *
 * Note: To make the whole thing a little bit nicer I added some animation 
 *       stuff. In first place it was some kind of NeXTSTEP learning action. My
 *		 first step in the OOP-area. Doing this little Info object was so easy. 
 *		 NeXTSTEP is realy realy nice....no...itÂs great.
 * 		 The Info is unique for every App so I made not attempt to design a
 * 		 very reusable class. Anyway...it might be reused.
 *
 * Written by: 		Thomas Engel
 * Created:    		25.10.1993 (Copyleft)
 * Last modified: 	07.05.1994
 */

#import <appkit/appkit.h>

@interface SHInfo:Object
{
	id		panel;
	id		imageButton;
	id		textField;
	
	int		currentIcon;

	id		appImage;			// Buttons containing the images.
	id		appText;			// ...plus text.
	id		tomiImage;
	id		tomiText;
	id		wolfyImage;
	id		wolfyText;
		
	BOOL	animationRunning;
	id		currentAnimator;
	id		someAnimator;		// Objects that do some nice animations
}

- init;

- makeKeyAndOrderFront:sender;

// Switching between icons. Triggered by buttons inside the Panel.

- switchToNextIcon:sender;
- switchToAppIcon:sender;
- switchToTomiIcon:sender;
- switchToWolfyIcon:sender;

- _switchTo:(int)aStyle with:aImageButton :aTextField;

- startRandomAnimation:sender;

// Delegatemethods to stop a animation properly even when our window closes.
// Attention. WeÂre the animators delegate and the windows delegate. 

- animationDidStop:sender;
- windowWillClose:sender;

@end

/*
 * History: 07.05.94 Switched to BBInfo.
 *
 *			19.01.94 Added the textFields.
 *
 *
 * Bugs: - No
 */