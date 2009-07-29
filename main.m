//
//  main.m
//  DblfDice
//
//  Created by Eric Saxby on 6/8/09.
//  Copyright Living in the Past 2009. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = NSApplicationMain(argc,  (const char **) argv);
	[pool release];
	return retVal;
}
