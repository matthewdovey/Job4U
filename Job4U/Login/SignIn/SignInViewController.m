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
#import "SignInViewModel.h"

@interface SignInViewController () <UITextFieldDelegate>

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) UILabel *signInLabel;
@property (nonatomic, strong) UITextField *usernameTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *signInButton;
@property (nonatomic, strong) SignInViewModel *signInViewModel;

@end

@implementation SignInViewController

@synthesize delegate;
@synthesize signInViewModel;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor redColor];
    self.setup;
}

- (void)setup {
    CGRect textFieldRect = CGRectMake(0.0, 0.0, 200.0, 30.0);
    
    _signInLabel = [[UILabel alloc] initWithFrame:textFieldRect];
    _signInLabel.text = @"Sign in";
    _usernameTextField = [[UITextField alloc] initWithFrame:textFieldRect];
    _usernameTextField.placeholder = @"Username";
    _passwordTextField = [[UITextField alloc] initWithFrame:textFieldRect];
    _passwordTextField.placeholder = @"Password";
    _signInButton = [[UIButton alloc] initWithFrame:textFieldRect];
    [_signInButton setTitle:@"Sign In" forState:normal];
    [_signInButton addTarget:self
                      action:@selector(signIn)
            forControlEvents:UIControlEventTouchUpInside];
    [_signInButton setEnabled:NO];
    
    _usernameTextField.delegate = self;
    _passwordTextField.delegate = self;
    
    [self.view addSubview:_signInLabel];
    [self.view addSubview:_usernameTextField];
    [self.view addSubview:_passwordTextField];
    [self.view addSubview:_signInButton];
    self.setupStyling;
    self.setupConstraints;
}

- (void)setupStyling {
    _signInLabel.textColor = [UIColor blackColor];
    
    _usernameTextField.backgroundColor = [UIColor whiteColor];
    _usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    _passwordTextField.backgroundColor = [UIColor whiteColor];
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    _signInButton.backgroundColor = [UIColor whiteColor];
    [_signInButton setTitleColor:[UIColor blackColor] forState:normal];
}

- (void)setupConstraints {
    int width = self.view.frame.size.width / 2;
    int viewHeight = self.view.frame.size.height - 150;
    int usernameHeight = viewHeight / 2;
    int passwordHeight = (viewHeight + 100) / 2;
    int labelHeight = (viewHeight - 80) / 2;
    int buttonHeight = (viewHeight + 200) / 2;
    
    CGPoint usernameCenterPoint = CGPointMake(width, usernameHeight);
    CGPoint passwordCenterPoint = CGPointMake(width, passwordHeight);
    CGPoint labelCenterPoint = CGPointMake(width, labelHeight);
    CGPoint buttonCenterPoint = CGPointMake(width, buttonHeight);
    
    _signInLabel.center = labelCenterPoint;
    _usernameTextField.center = usernameCenterPoint;
    _passwordTextField.center = passwordCenterPoint;
    _signInButton.center = buttonCenterPoint;
}

- (void)signIn {
    //TODO: setup authentication
    delegate.successfulSignIn;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if (_usernameTextField.text.length > 4 && _passwordTextField.text.length > 5) {
        [_signInButton setEnabled:YES];
    } else {
        [_signInButton setEnabled:NO];
    }
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
