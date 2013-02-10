//
//  Roller.m
//  DblfDice
//
//  Created by Eric Saxby on 6/8/09.
//  Copyright 2009 Living in the Past. All rights reserved.
//

#import "Roller.h"

@implementation Roller

@synthesize value;
@synthesize randomNumber;
@synthesize result;

- (id) initWithValue: (int) newValue {
	if (self = [super init]) {
		self.value = newValue;
	}
	return self;
}

- (NSString *)description {
	NSString *oldDescription = [super description];
	return [NSString stringWithFormat:@"%@ value = %d, result = %d, randomNumber = %d", oldDescription, self.value, self.result, self.randomNumber];
	[oldDescription release];
}

- (int) roll {
    randomNumber = arc4random_uniform(100) + 1;
	
	if (randomNumber == 100) {
		result = 0;
	} else if (value) {
		int subtraction = (value - randomNumber);
		int division = round((float) subtraction / 20);
		
		if (division == 0) {
			division = (subtraction < 0) ? -1 : 1;
		}
		
		result = division;
		
		switch (randomNumber) {
			case 1:
				result += 3;
				break;
			case 2:
				result += 2;
				break;
			case 3:
				result += 1;
				break;
			case 4:
				result += 1;
				break;
			default:
				break;
		}
	} else {
		result = randomNumber;
	}
	
	return result;
}

@end
