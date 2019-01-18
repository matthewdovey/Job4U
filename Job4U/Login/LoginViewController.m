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

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation LoginViewController

@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    [_titleLabel setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:35]];
}

- (IBAction)proceedToLogin:(id)sender {
    [self.delegate showSignInScreen];
}

- (IBAction)proceedToRegister:(id)sender {
    [self.delegate showRegisterScreen];
}

@end
