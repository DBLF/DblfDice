//
//  RollerController.h
//  DblfDice
//
//  Created by Eric Saxby on 6/9/09.
//  Copyright 2009 Living in the Past. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Roller;

@interface RollerController : NSObject {
	NSTextField *valueField;
	NSTextField *resultField;
	NSTextField *rollField;
}

@property (nonatomic, retain) IBOutlet NSTextField *valueField;
@property (nonatomic, retain) IBOutlet NSTextField *resultField;
@property (nonatomic, retain) IBOutlet NSTextField *rollField;

- (IBAction) rollDice: (id) sender;

@end
