//
//  ViewController.m
//  Bull_Game
//
//  Created by Jason Welch on 6/11/14.
//  Copyright (c) 2014 Stevenson University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSArray *buttonsWithBackground = @[_exchangeButton];
	[self makeTheseButtonsLookFancy:buttonsWithBackground];

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - Helper Methods

// Takes an array of UIButton objects and applies a background image to each one
- (void) makeTheseButtonsLookFancy:(NSArray*)buttonsNeedingBackgrounds {
	
	for (id nextButton in buttonsNeedingBackgrounds) {

		if ([nextButton isKindOfClass:[UIButton class]]) {
			
			UIButton *button = (UIButton*)nextButton;
			button.backgroundColor = [UIColor clearColor];
			UIEdgeInsets insets = UIEdgeInsetsMake(12.0f, 12.0f, 12.0f, 12.0f);
			UIImage *buttonImage = [[UIImage imageNamed:@"buttonbg"] resizableImageWithCapInsets:insets];
			[button setBackgroundImage:buttonImage forState:UIControlStateNormal];
			
		}
	}
}

- (IBAction)exchangeButtonPressed:(UIButton *)sender {
}
@end
