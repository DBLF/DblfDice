//
//  RollerController.m
//  DblfDice
//
//  Created by Eric Saxby on 6/9/09.
//  Copyright 2009 Living in the Past. All rights reserved.
//

#import "RollerController.h"
#import "Roller.h"

@implementation RollerController

@synthesize valueField;
@synthesize resultField;
@synthesize rollField;

- (NSString *) description {
	NSString *oldDescription = [super description];
	return [NSString stringWithFormat:@"%@ value: %@, result: %@, %@", oldDescription, self.valueField, self.resultField, self.rollField];
	[oldDescription release];
}

- (IBAction) rollDice: (id) sender {
	Roller *roller = [[Roller alloc] initWithValue:[valueField intValue]];
	[roller roll];
	
	[resultField setTitleWithMnemonic:[NSString stringWithFormat:@"%d", [roller result]]];
	[rollField setTitleWithMnemonic:[NSString stringWithFormat:@"roll: %d", [roller randomNumber]]];
	
	if ([roller randomNumber] == 100) {
		[resultField setTextColor:(NSColor *) [NSColor redColor]];
	} else if ([roller randomNumber] < 5) {
		[resultField setTextColor:(NSColor *) [NSColor greenColor]];
	} else {
		[resultField setTextColor:(NSColor *) [NSColor blackColor]];
	}
	
	[roller release];
}

- (void) dealloc {
	[valueField release];
	[resultField release];
	[rollField release];
	[super dealloc];
}

@end
