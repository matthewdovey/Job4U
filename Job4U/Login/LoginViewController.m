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
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    [self createContainer];
    [self setup];
    [self setupConstraints];
    [self setupStyling];
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
    CGRect rect = CGRectMake(0, 0, 200, 40);
    
    _titleLabel = [[UILabel alloc] initWithFrame:rect];
    [_titleLabel setBackgroundColor:[UIColor whiteColor]];
    
    _signInButton = [[UIButton alloc] initWithFrame:rect];
    [_signInButton setBackgroundColor:[UIColor whiteColor]];
    [_signInButton addTarget:self action:@selector(proceedToSignIn:) forControlEvents:UIControlEventTouchUpInside];
    
    _registerButton = [[UIButton alloc] initWithFrame:rect];
    [_registerButton setBackgroundColor:[UIColor whiteColor]];
    [_registerButton addTarget:self action:@selector(proceedToRegister:) forControlEvents:UIControlEventTouchUpInside];
    
    [_containerView addSubview:_titleLabel];
    [_containerView addSubview:_signInButton];
    [_containerView addSubview:_registerButton];
}

- (void)setupStyling {
    if (loginViewModel != nil) {
        [_titleLabel setText:loginViewModel.getAppTitle];
        [_titleLabel setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:35]];

        [_signInButton setTitle:loginViewModel.getSignInTitle forState:UIControlStateNormal];
        [_signInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_signInButton setBackgroundColor:[UIColor blueColor]];
        [_signInButton setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:20]];

        [_registerButton setTitle:loginViewModel.getRegisterTitle forState:UIControlStateNormal];
        [_registerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_registerButton setBackgroundColor:[UIColor blueColor]];
        [_registerButton setFont:[UIFont fontWithName:@"AvenirNext-Heavy" size:20]];
    }
}

- (void)createContainer {
    _containerView = [[UIView alloc] initWithFrame:self.view.frame];
    [_containerView setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:_containerView];
}

- (void)setupConstraints {
    int width = self.view.frame.size.width / 2;
    int height = self.view.frame.size.height / 2;
    
    CGPoint titleCenter = CGPointMake(width, height - 100);
    CGPoint signInCenterPoint = CGPointMake(width, height);
    CGPoint registerCenterPoint = CGPointMake(width, height + 60);
    
    _titleLabel.center = titleCenter;
    _signInButton.center = signInCenterPoint;
    _registerButton.center = registerCenterPoint;
}

@end
