/* SHAppManager.h				 
 *
 * This is the basic controller of the App. It manages all hig abstraction
 * tasks for the panel, documents and connections to the outside.
 *
 * Usage: This is not a very reusable object. 
 *
 * Written by: 		Thomas Engel
 * Created:    		23.10.1993 (Copyleft)
 * Last modified: 	07.05.1994
 */

#import <Cocoa/Cocoa.h>

@class SHInfo;

@interface SHAppManager:NSObject <NSApplicationDelegate>
{
	IBOutlet SHInfo	*info;
	IBOutlet id	preferences;
}

// Some methods need to get the app started..

- (BOOL)appAcceptsAnotherFile:sender;

// Here we do the handling of our Panels & Tools

- (IBAction)showInfo:sender;
- (IBAction)sendSuggestion:sender;
- (IBAction)showPreferences:sender;
- preferences;
- (void)_readPreferences;

@end

/*
 * History: 13.01.95 Bla.
 *
 *
 * Hints: This Object could be defined as a subclass of a general docManager
 *		 like the one provided by the NeXT-miniexamples...Maybe later or never
 *
 *
 * Bugs: No bugs and birds seen....
 */
