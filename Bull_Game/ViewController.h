//
//  ViewController.h
//  Bull_Game
//
//  Created by Jason Welch on 6/11/14.
//  Copyright (c) 2014 Stevenson University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

#pragma mark - IBOutlets

@property (strong, nonatomic) IBOutlet UIButton *exchangeButton;
@property (strong, nonatomic) IBOutlet UIButton *handCard1Button;
@property (strong, nonatomic) IBOutlet UIButton *handCard2Button;
@property (strong, nonatomic) IBOutlet UIButton *handCard3Button;
@property (strong, nonatomic) IBOutlet UIButton *handCard4Button;
@property (strong, nonatomic) IBOutlet UIButton *handCard5Button;
@property (strong, nonatomic) IBOutlet UIButton *drawDeckButton;

#pragma mark - Public Properties


#pragma mark - IBActions

- (IBAction)exchangeButtonPressed:(UIButton *)sender;

#pragma mark - Public Methods




@end

