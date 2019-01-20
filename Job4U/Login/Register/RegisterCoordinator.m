//
//  RegisterCoordinator.m
//  Job4U
//
//  Created by Matthew Dovey on 20/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegisterCoordinator.h"
#import "RegisterViewController.h"
#import "RegisterViewModel.h"
#import "DashboardCoordinator.h"

@interface RegisterCoordinator () <RegisterDelegate>

@property (nonatomic, strong) UINavigationController *navigationController;
@property (nonatomic, strong) DashboardCoordinator *dashboardCoordinator;

@end

@implementation RegisterCoordinator

- (id)initWithNavController:(UINavigationController *)navigationController {
    _navigationController = navigationController;
    return self;
}

- (void)start {
    [self showRegisterScreen];
}

- (void)showRegisterScreen {
    RegisterViewController *registerViewController = [[RegisterViewController alloc] init];
    RegisterViewModel *viewModel = [[RegisterViewModel alloc] init];
    [registerViewController setViewModel:viewModel];
    registerViewController.delegate = self;
    [_navigationController pushViewController:registerViewController animated:YES];
}

- (void)successfulRegistration {
    [self showDashBoardScreen];
}

- (void)showDashBoardScreen {
    _dashboardCoordinator = [[DashboardCoordinator alloc] initWithNavController:_navigationController];
    [_dashboardCoordinator start];
}

@end
