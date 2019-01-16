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

@interface LoginCoordinator ()

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation LoginCoordinator

- (id)initWithNavController:(UINavigationController*)navigationController {
    _navigationController = navigationController;
    return self;
}

- (void)start {
    self.showLogin;
}

- (void)showLogin {
    LoginViewController *loginViewController = [[LoginViewController alloc] init];
    [_navigationController pushViewController:loginViewController animated:YES];
}

@end
