//
//  DashboardCoordinator.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DashboardCoordinator.h"
#import "DashboardViewController.h"

@interface DashboardCoordinator ()

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation DashboardCoordinator

- (id)initWithNavController:(UINavigationController*) navigationController {
    _navigationController = navigationController;
    return self;
}

- (void)start {
    self.showDashboard;
}

- (void)showDashboard {
    NSLog(@"show dashboard");
    DashboardViewController *dashViewController = [[DashboardViewController alloc] init];
    [_navigationController pushViewController:dashViewController animated:YES];
}

@end
