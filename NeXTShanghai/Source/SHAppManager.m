/* SHAppManager.m				 
 *
 * This is the basic controller of the App. It manages all big abstraction
 * tasks for the panels, documents and connections to the outside.
 *
 * For interface-info see the header file. The comments in this file mostly
 * cover only the real implementation details.
 *
 * Written by: 		Thomas Engel
 * Created:    		23.10.1993 (Copyleft)
 * Last modified: 	07.05.1994
 */

#import "SHAppManager.h"
#import "SHInfo.h"
#import <Cocoa/Cocoa.h>

@implementation SHAppManager

- (void)applicationWillFinishLaunching:(NSNotification *)notification
{
	// This is the init part we need to pass before we get the messages that
	// we have to open some files.
	// To be able to init a class we need the have the Preferences,

	// preferences = [CEPreferencesManager new];
	
	[self _readPreferences];
}

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
	// This is some kind of late init. These object are need for working but
	// not for reading the classes or having a class initialized.
}

- (BOOL)appAcceptsAnotherFile:sender
{
	// Inform the workspace that we can open multiple files.
	return NO;
}

- (void)applicationDidBecomeActive:(NSNotification *)notification
{
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
	// Now lets see what we have...ask every window what is going on.
}

- (IBAction)showInfo:sender
{
	if( !info ) info = [SHInfo new];
		
	[info makeKeyAndOrderFront:self];
}

- (IBAction)sendSuggestion:sender
{
#if 0
	id	mailer;
	id	tomiAdr;
	id	subject;
	id	theText;
	
	tomiAdr = [MiscString newWithString:
					"tsengel@cip.informatik.uni-erlangen.de"];
	subject = [MiscString newWithString:
					"Shanghai v0.81 suggestion"];
	theText = [MiscString newWithString:
					"Here is a little suggestion on Shanghai v0.81:\n"];

	mailer = [MiscMailApp localMailer];
	[mailer setNoclutter:NO];
	[mailer sendMailTo:tomiAdr subject:subject body:theText];
	
	[theText free];
	[tomiAdr free];
	[subject free];
	
	return self;
#else
    NSBeep();
#endif
}

- (IBAction)showPreferences:sender
{
//	if( preferences ) [preferences makeKeyAndOrderFront:self];
}

- preferences
{
	return self;
}

- (void)_readPreferences
{

}

@end

/*
 * History: 13.01.95 Bla.
 *
 *
 * Bugs: No bugs and birds seen....
 */
