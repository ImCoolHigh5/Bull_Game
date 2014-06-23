//
//  BULLCard.h
//  Bull_Game
//
//  Created by Jason Welch and Richard Moffett on 6/11/14.
//  Copyright (c) 2014 Jason Welch and Richard Moffett. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    Spades,
    Hearts,
    Clubs,
    Diamonds
} Suit;

#define Ace   1
#define Jack  11
#define Queen 12
#define King  13

@interface BULLCard : NSObject

@property (nonatomic) NSUInteger value;
@property (nonatomic) Suit suit;

- (id)initWithValue:(NSInteger)value andSuit:(Suit)suit;

@end

