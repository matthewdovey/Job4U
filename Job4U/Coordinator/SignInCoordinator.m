//
//  SignInCoordinator.m
//  Job4U
//
//  Created by Matthew Dovey on 18/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SignInCoordinator.h"
#import "SignInDelegate.h"
#import "DashboardCoordinator.h"

@interface SignInCoordinator () <SignInDelegate>

@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) DashboardCoordinator *dashCoordinator;

@end

@implementation SignInCoordinator

-(id)initWithNavController:(UINavigationController *)navigationController {
    return self;
}

- (void)start {
    
}

- (void)successfulSignIn {
    [self showDashboard];
}

- (void)showDashboard {
    _dashCoordinator = [[DashboardCoordinator alloc] initWithNavController:_navigationController];
    _dashCoordinator.start;
}

@end
