//
//  SplashScreenViewController.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SplashScreenViewController.h"

@interface SplashScreenViewController ()

@property (nonatomic, retain) UILabel *splashLabel;

@end

@implementation SplashScreenViewController

@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.setup;
}

- (void)setup {
    CGRect labelRect = CGRectMake(0.0, 0.0, 200.0, 30.0);
    
    int width = self.view.frame.size.width / 2;
    int height = self.view.frame.size.height / 2;
    
    CGPoint centerPoint = CGPointMake(width, height);
    
    _splashLabel = [[UILabel alloc] initWithFrame:labelRect];
    _splashLabel.text = @"Job4U";
    _splashLabel.center = centerPoint;
    _splashLabel.backgroundColor = [UIColor whiteColor];
    _splashLabel.textColor = [UIColor blackColor];
    [_splashLabel setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:35]];
    [_splashLabel setAlpha:0];
    [self.view addSubview:_splashLabel];
    self.animateSplashScreen;
}

- (void)animateSplashScreen {
    [UIView animateWithDuration:4.0f animations:^{
        [self.splashLabel setAlpha:1];
    } completion:^(BOOL finished){
        self.splashHasFinished;
    }];
}

- (void)splashHasFinished {
    delegate.splashHasFinished;
}

@end
