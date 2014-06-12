//
//  BULLPokerDataController.h
//  Bull_Game
//
//  Created by Jason Welch on 6/11/14.
//  Copyright (c) 2014 Stevenson University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BULLHand.h"

@interface PokerDataController : NSObject

- (BULLHand*)setPokerValuesForHand:(BULLHand*)hand;

@end
