//
//  BULLDealer.m
//  Bull_Game
//
//  Created by Jason Welch and Richard Moffett on 6/11/14.
//  Copyright (c) 2014 Jason Welch and Richard Moffett. All rights reserved.
//

#import "BULLDealer.h"
#import "BULLCard.h"

@implementation BULLDealer

- (instancetype)init
{
    if (self == [super init])
    {
        // Create the deck
        self.deck = [[BULLDeck alloc] init];
        
        // Shuffle the deck
        [self.deck shuffle];
    }
    return self;
}

- (NSMutableArray *)dealNumberOfCards:(int)number
{
    // Check to be sure the number of cards request is between 1 and 5
    NSAssert(number >= 1 && number <= 5, @"Number of cards not between 1 and 5");
    
    NSMutableArray *_cardsToBeDealt = [NSMutableArray arrayWithCapacity:number];
    
    for (int i = 0; i < number ; i++)
    {
        BULLCard *card = [self.deck draw];
        [_cardsToBeDealt addObject:card];
    }
    
    return _cardsToBeDealt;
}

@end
