//
//  DashboardViewController.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DashboardViewController.h"
#import "DashboardViewModel.h"

@interface DashboardViewController ()

@property (nonatomic, strong) UIView *topView;

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)uiSetup {
    _topView = [[UIView alloc] init];
    [self.view addSubview:_topView];
    _topView.backgroundColor = [UIColor redColor];
    
}

- (void)constraintSetup {
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint
                                         constraintWithItem:_topView
                                         attribute:NSLayoutAttributeTop
                                         relatedBy:NSLayoutRelationEqual
                                         toItem:self.view
                                         attribute:NSLayoutAttributeTop
                                         multiplier:1.0f
                                         constant:0];
    NSLayoutConstraint *leadingConstraint = [NSLayoutConstraint
                                             constraintWithItem:_topView
                                             attribute:NSLayoutAttributeLeading
                                             relatedBy:NSLayoutRelationEqual
                                             toItem:self.view
                                             attribute:NSLayoutAttributeLeading
                                             multiplier:1.0f
                                             constant:0];
    NSLayoutConstraint *trailingConstraint = [NSLayoutConstraint
                                              constraintWithItem:_topView
                                              attribute:NSLayoutAttributeTrailing
                                              relatedBy:NSLayoutRelationEqual
                                              toItem:self.view
                                              attribute:NSLayoutAttributeTrailing
                                              multiplier:1.0f
                                              constant:0];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint
                                            constraintWithItem:_topView
                                            attribute:NSLayoutAttributeHeight
                                            relatedBy:NSLayoutRelationEqual
                                            toItem:self.view
                                            attribute:NSLayoutAttributeHeight
                                            multiplier:1.0f
                                            constant:0];
    
    [self.view addConstraint:topConstraint];
    [self.view addConstraint:leadingConstraint];
    [self.view addConstraint:trailingConstraint];
    [self.view addConstraint:heightConstraint];
}

@end
