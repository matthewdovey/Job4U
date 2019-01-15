//
//  SignInViewController.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SignInViewController.h"

@interface SignInViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) UITextField *usernameTextField;
@property (nonatomic, strong) UITextField *passwordTextField;

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor redColor];
    self.setup;
}

- (void)setup {
    _usernameTextField = [[UITextField alloc] init];
    _usernameTextField.placeholder = @"Username";
    _passwordTextField = [[UITextField alloc] init];
    _passwordTextField.placeholder = @"Password";
    
    [self.view addSubview:_usernameTextField];
    [self.view addSubview:_passwordTextField];
}

-(void)setupStyling {
    
}

- (void)setupConstraints {
    
}

@end
