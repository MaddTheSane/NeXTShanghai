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

#import <SHAppManager.h>
#import <SHInfo.h>

#import <misckit/misckit.h>

@implementation SHAppManager

- appWillInit:sender
{
	// This is the init part we need to pass before we get the messages that
	// we have to open some files.
	// To be able to init a class we need the have the Preferences,

	// preferences = [CEPreferencesManager new];
	
	[self _readPreferences];
	return self;
}

- appDidInit:sender
{
	// This is some kind of late init. These object are need for working but
	// not for reading the classes or having a class initialized.

	
	return self;
}

- (BOOL)appAcceptsAnotherFile:sender
{
	// Inform the workspace that we can open multiple files.
	return NO;
}

- appDidBecomeActive:sender
{
	return self;
}

- appWillTerminate:sender
{
	// Now lets see what we have...ask every window what is going on.
	return self;
}

- showInfo:sender
{
	if( !info ) info = [SHInfo new];
		
	[info makeKeyAndOrderFront:self];
	return self;
}

- sendSuggestion:sender
{
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
}

- showPreferences:sender
{
//	if( preferences ) [preferences makeKeyAndOrderFront:self];
	return self;
}

- preferences
{
	return self;
}

- _readPreferences
{
	return self;
}

@end

/*
 * History: 13.01.95 Bla.
 *
 *
 * Bugs: No bugs and birds seen....
 */