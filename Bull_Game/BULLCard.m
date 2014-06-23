//
//  BULLCard.m
//  Bull_Game
//
//  Created by Jason Welch and Richard Moffett on 6/11/14.
//  Copyright (c) 2014 Jason Welch and Richard Moffett. All rights reserved.
//

#import "BULLCard.h"

@implementation BULLCard

-(id)initWithValue:(NSInteger)value andSuit:(Suit)suit
{
    
    NSAssert(value >= Ace && value <= King, @"Invalid card value");
    
    if (self == [super init])
    {
        self.value = value;
        self.suit  = suit;
    }
    return self;
}

// This return a readable description of the card, ie: "5 of Hearts"
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ of %@", [self valueAsString], [self suitAsString]];
}


// This returns the value as a string such as Ace, Jack, Queen or King.
// Cards 2 - 10 return their face value as string ie "2", "3" ...
- (NSString *)valueAsString
{
    switch (self.value)
    {
        case Ace:
            return @"Ace";
            break;
            
        case Jack:
            return @"Jack";
            break;
            
        case Queen:
            return @"Queen";
            break;
            
        case King:
            return @"King";
            break;
            
        default:
            return [NSString stringWithFormat:@"%d", self.value];
            break;
    }
}

// This returns the name of the suit as a string
- (NSString *)suitAsString
{
    switch (self.suit)
    {
        case Spades:
            return @"Spades";
            break;
            
        case Hearts:
            return @"Hearts";
            break;
            
        case Clubs:
            return @"Clubs";
            break;
            
        case Diamonds:
            return @"Diamonds";
            break;
            
        default:
            return nil;
            break;
    }
}

@end
