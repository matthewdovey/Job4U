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
#import "DashboardCoordinator.h"

@interface AppCoordinator ()

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) DashboardCoordinator *dashboardCoordinator;

@end

@implementation AppCoordinator

- (id)initWithWindow:(UIWindow*)window {
    self = [super init];
    if (self) {
        if (_window == nil) {_window = window;}
    }
    return self;
}

- (void)start {
    LoginViewController *rootViewController = [[LoginViewController alloc] init];
    _window.rootViewController = rootViewController;
}

@end
