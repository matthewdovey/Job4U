//
//  AppCoordinator.m
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppCoordinator.h"
#import "LoginViewController.h"
#import "LoginCoordinator.h"
#import "SplashScreenViewController.h"

@interface AppCoordinator () <SplashScreenDelegate>

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) LoginCoordinator *loginCoordinator;

@end

@implementation AppCoordinator

- (id)initWithWindow:(UIWindow*)window {
    self = [super init];
    if (self) {
        if (_window == nil) {
            _window = window;
            [_window makeKeyAndVisible];
        }
    }
    return self;
}

- (void)start {
    self.showSplashScreen;
}

- (void)showSplashScreen {
    SplashScreenViewController *viewController = [[SplashScreenViewController alloc] init];
    viewController.delegate = self;
    _window.rootViewController = viewController;
    
}

- (void)splashHasFinished {
    self.showLoginScreen;
}

- (void)showLoginScreen {
    UINavigationController *navigationController = [[UINavigationController alloc] init];
    LoginCoordinator *loginCoordinator = [[LoginCoordinator alloc] initWithNavController:navigationController];
    _loginCoordinator = loginCoordinator;
    loginCoordinator.start;
}

@end
