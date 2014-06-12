//
//  BULLCard.m
//  Bull_Game
//
//  Created by Jason Welch on 6/11/14.
//  Copyright (c) 2014 Stevenson University. All rights reserved.
//

#import "BULLCard.h"

@implementation BULLCard

// Intialize card with passed values
-(id)initCardWithSuite:(NSString*)suit andValue:(NSNumber*)value
{
	if (self == [super init]) {
		self.suit  = suit;
		self.value = value;
	}
	
	return self;
	
}

// Return a string representing the name of the image file
- (NSString *)cardImageName
{
	return [NSString stringWithFormat:@"%@-%@", self.suit, self.value];
}

@end
