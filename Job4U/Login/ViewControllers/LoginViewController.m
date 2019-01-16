//
//  LoginViewController.m
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import "LoginViewController.h"
#import "SignInViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()

@property (nonatomic, strong) UIViewController *childViewController;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)proceedToLogin:(id)sender {
    UIViewController *viewController = [[SignInViewController alloc] init];
    [self displayChildViewController: viewController];
}

- (IBAction)proceedToRegister:(id)sender {
    UIViewController *viewController = [[RegisterViewController alloc] init];
    [self displayChildViewController:viewController];
}

- (void)displayChildViewController:(UIViewController*)viewController {
    [self addChildViewController:viewController];
    viewController.view.frame = self.view.frame;
    [self.view addSubview:viewController.view];
    [viewController didMoveToParentViewController:self];
}

@end
