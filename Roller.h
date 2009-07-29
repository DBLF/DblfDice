//
//  Roller.h
//  DblfDice
//
//  Created by Eric Saxby on 6/8/09.
//  Copyright 2009 Living in the Past. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Roller : NSObject {
	int value;
	int randomNumber;
	int result;
}

@property int value;
@property int randomNumber;
@property int result;

- (id) initWithValue: (int) newValue;
- (int) roll;

@end
