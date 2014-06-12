//
//  BULLHand.m
//  Bull_Game
//
//  Created by Jason Welch on 6/11/14.
//  Copyright (c) 2014 Stevenson University. All rights reserved.
//

#import "BULLHand.h"
#import "BULLCard.h"

@implementation BULLHand

- (int)valueOfCardAtIndex:(int)cardIndex {
	
	BULLCard *cardAtIndex = [[BULLCard alloc] init];
	
	cardAtIndex = self.cards[cardIndex];
	
	return [cardAtIndex.value intValue];
}

@end
