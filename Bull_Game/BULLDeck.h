//
//  BULLDeck.h
//  Bull_Game
//
//  Created by Jason Welch and Richard Moffett on 6/11/14.
//  Copyright (c) 2014 Jason Welch and Richard Moffett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BULLCard.h"

@class BULLCard;

@interface BULLDeck : NSObject

- (void)shuffle;

// Returns the top-most card from the deck
- (Card *)draw;

// Returns the number of cards remaining in the deck
- (NSInteger)cardsRemaining;

@end
