//
//  BULLDeck.m
//  Bull_Game
//
//  Created by Jason Welch and Richard Moffett on 6/11/14.
//  Copyright (c) 2014 Jason Welch and Richard Moffett. All rights reserved.
//

#import "BULLDeck.h"

@implementation BULLDeck
{
    NSMutableArray *_cards;
}

- (instancetype)init
{
    if (self == [super init])
    {
        // Set up _cards array to hold 52 cards
        _cards = [NSMutableArray arrayWithCapacity:52];
        
        // Set up deck
        [self setUpCards];
    }
    
    return self;
}


- (void)setUpCards
{
    // Loop through suits and add 13 cards to _cards array
    for (Suit suit = Spades; suit <= Diamonds; suit++)
    {
        for (int value = Ace; value <= King; value++)
        {
            // Create the card
            BULLCard *card = [[BULLCard alloc] initWithValue:value andSuit:suit];
            
            // Add the card to the _cards array
            [_cards addObject:card];
            
        }
    }
}

- (NSInteger)cardsRemaining
{
    // Returns the number of cards remaining in the deck
    return [_cards count];
}

- (void)shuffle
{
    NSUInteger count = [_cards count];
    NSMutableArray *shuffledCards = [NSMutableArray arrayWithCapacity:count];
    
    for (int x = 0; x < count; x++)
    {
        // Get a random number between 0 and the remaining cards
        int i = arc4random() % [self cardsRemaining];
        
        // Get the card at the random index of _cards array
        BULLCard *card = [_cards objectAtIndex:i];
        
        // Add the card to the shuffledCards array
        [shuffledCards addObject:card];
        
        // Remove the card from _cards array
        [_cards removeObjectAtIndex:i];
    }
    
    NSAssert([self cardsRemaining] == 0, @"Original deck should now be empty");
    
    // Replace the orginal decl with the newly shuffled deck
    _cards = shuffledCards;
}

- (BULLCard *)draw
{
    NSAssert([self cardsRemaining] > 0, @"No more cards in the deck");
    
    // Grab the top card from the deck
    BULLCard *card = [_cards lastObject];
    
    // Remove the last card from the deck
    [_cards removeLastObject];
    
    // Return the card
    return card;
}

@end
