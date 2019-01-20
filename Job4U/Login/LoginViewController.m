//
//  LoginViewController.m
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewModel.h"
#import "SignInViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()

@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *signInButton;
@property (nonatomic, strong) UIButton *registerButton;
@property (nonatomic, strong) LoginViewModel *loginViewModel;

@end

@implementation LoginViewController

@synthesize delegate;
@synthesize loginViewModel;

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self createContainer];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
    [self.view setBackgroundColor:[UIColor grayColor]];
}

- (void)setViewModel:(LoginViewModel *)viewModel {
    self.loginViewModel = viewModel;
    [self setupStyling];
}

- (void)proceedToSignIn:(id)sender {
    [self.delegate showSignInScreen];
}

- (void)proceedToRegister:(id)sender {
    [self.delegate showRegisterScreen];
}

- (void)setup {
    CGRect rect = CGRectMake(0, 0, 200, 30);
    
    _titleLabel = [[UILabel alloc] initWithFrame:rect];
    [_titleLabel setText:@"Job4U"];
    [_titleLabel setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:35]];
    [_titleLabel setBackgroundColor:[UIColor whiteColor]];
    
    _signInButton = [[UIButton alloc] initWithFrame:rect];
    [_signInButton setBackgroundColor:[UIColor whiteColor]];
    [_signInButton addTarget:self action:@selector(proceedToSignIn:) forControlEvents:UIControlEventTouchUpInside];
    
    _registerButton = [[UIButton alloc] initWithFrame:rect];
    [_registerButton setBackgroundColor:[UIColor whiteColor]];
    [_registerButton addTarget:self action:@selector(proceedToRegister:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setupStyling {
    
}

- (void)createContainer {
    _containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [_containerView setBackgroundColor:[UIColor purpleColor]];
    [_containerView setFrame:self.view.frame];
    [self.view addSubview:_containerView];
    
    int width = self.view.frame.size.width / 2;
    int height = self.view.frame.size.height / 2;
    
    CGPoint centerPoint = CGPointMake(width, height);
    
    [_containerView addSubview:_titleLabel];
    [_containerView addSubview:_signInButton];
    [_containerView addSubview:_registerButton];
    
    _signInButton.center = centerPoint;
}

- (void)setupConstraints {

}

@end
