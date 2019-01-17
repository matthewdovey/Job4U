//
//  LoginCoordinator.m
//  Job4U
//
//  Created by Matthew Dovey on 16/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginCoordinator.h"
#import "SignInViewController.h"
#import "DashboardCoordinator.h"
#import "SignInDelegate.h"

@interface LoginCoordinator () <SignInDelegate>

@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) DashboardCoordinator *dashCoordinator;

@end

@implementation LoginCoordinator

- (id)initWithNavController:(UINavigationController*) navigationController {
    _navigationController = navigationController;
    return self;
}

- (void)start {
    self.showLogin;
}

- (void)showLogin {
    SignInViewController *signInViewController = [[SignInViewController alloc] init];
    signInViewController.delegate = self;
    [_navigationController pushViewController:signInViewController animated:YES];
}

- (void)successfulSignIn {
    [self showDashboard];
}

- (void)showDashboard {
    _dashCoordinator = [[DashboardCoordinator alloc] initWithNavController:_navigationController];
    _dashCoordinator.start;
}

@end
