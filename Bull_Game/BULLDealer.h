//
//  BULLDealer.h
//  Bull_Game
//
//  Created by Jason Welch and Richard Moffett on 6/11/14.
//  Copyright (c) 2014 Jason Welch and Richard Moffett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BULLDeck.h"

@interface BULLDealer : NSObject

@property (nonatomic, strong) BULLDeck *deck;

// Returns an array of cards dealt
- (NSMutableArray *)dealNumberOfCards:(int)number;

@end
