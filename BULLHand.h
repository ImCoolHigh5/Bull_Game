//
//  BULLHand.h
//  Bull_Game
//
//  Created by Jason Welch on 6/11/14.
//  Copyright (c) 2014 Stevenson University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BULLHand : NSObject

#pragma mark - IBOutlets


#pragma mark - Public Properties

@property (nonatomic, strong) NSArray *cards;
@property (nonatomic, strong) NSString *pokerValue;
@property (nonatomic) int mainCardValue;
@property (nonatomic) int secondPairValue;
@property (nonatomic) int highCardValue;

#pragma mark - IBActions


#pragma mark - Public Methods

- (int)valueOfCardAtIndex:(int)cardIndex;

@end
