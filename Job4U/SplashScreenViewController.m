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

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)setup {
    CGRect labelRect = CGRectMake(0.0, 0.0, 200.0, 30.0);
    _splashLabel = [[UILabel alloc] initWithFrame:labelRect];
    _splashLabel.text = @"Job4U";
    [_splashLabel setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:35]];
}

@end
