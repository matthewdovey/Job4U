//
//  LoginCoordinator.m
//  Job4U
//
//  Created by Matthew Dovey on 16/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginCoordinator.h"
#import "LoginViewController.h"
#import "LoginViewModel.h"
#import "DashboardCoordinator.h"
#import "LoginDelegate.h"
#import "SignInCoordinator.h"

@interface LoginCoordinator () <LoginDelegate>

@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) SignInCoordinator *signInCoordinator;

@end

@implementation LoginCoordinator

- (id)initWithNavController:(UINavigationController*) navigationController {
    _navigationController = navigationController;
    return self;
}

- (void)start {
    [self showLogin];
}

- (void)showLogin {
    NSLog(@"login should show");
    LoginViewController *loginViewController = [[LoginViewController alloc] init];
    loginViewController.delegate = self;
    LoginViewModel *viewModel = [[LoginViewModel alloc] init];
    [loginViewController setViewModel:viewModel];
    [_navigationController pushViewController:loginViewController animated:YES];
}

- (void)showSignInScreen {
    _signInCoordinator = [[SignInCoordinator alloc] initWithNavController:_navigationController];
    [_signInCoordinator start];
}

- (void)showRegisterScreen {
    //TODO: setup registration screen
}

@end
