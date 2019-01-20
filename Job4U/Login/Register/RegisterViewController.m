//
//  RegisterViewController.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
#import "RegisterViewModel.h"

@interface RegisterViewController ()

@property (nonatomic, strong) RegisterViewModel *viewModel;
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIStackView *registerStackView;
@property (nonatomic, strong) UITextField *firstNameField;
@property (nonatomic, strong) UITextField *surnameField;
@property (nonatomic, strong) UITextField *usernameField;
@property (nonatomic, strong) UITextField *passwordField;
@property (nonatomic, strong) UITextField *passRepeatField;
@property (nonatomic, strong) UIButton *registerButton;

@end

@implementation RegisterViewController

@synthesize delegate;
@synthesize viewModel;

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupContainer];
    [self setup];
    [self setupStackView];
}

- (void)setViewModel:(RegisterViewModel *)viewModel {
    viewModel = viewModel;
}

- (void)setup {
    CGRect fieldRect = CGRectMake(0, 0, 200, 40);
    UIColor *fieldColour = [UIColor grayColor];
    _firstNameField = [[UITextField alloc] initWithFrame:fieldRect];
    [_firstNameField setBackgroundColor:fieldColour];
    
    _surnameField = [[UITextField alloc] initWithFrame:fieldRect];
    [_surnameField setBackgroundColor:fieldColour];
    
    _usernameField = [[UITextField alloc] initWithFrame:fieldRect];
    [_usernameField setBackgroundColor:fieldColour];
    
    _passwordField = [[UITextField alloc] initWithFrame:fieldRect];
    [_passwordField setBackgroundColor:fieldColour];
    
    _passRepeatField = [[UITextField alloc] initWithFrame:fieldRect];
    [_passRepeatField setBackgroundColor:fieldColour];
    
    _registerButton = [[UIButton alloc] initWithFrame:fieldRect];
    [_registerButton setBackgroundColor:fieldColour];
    [_registerButton addTarget:self
                        action:@selector(completeRegistration)
              forControlEvents:UIControlEventTouchUpInside];
    [_registerButton setTitle:@"Register" forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void)setupContainer {
    _containerView = [[UIView alloc] initWithFrame:self.view.frame];
    [_containerView setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:_containerView];
}

- (void)setupStackView {
    int centerX = self.view.frame.size.width / 2;
    int centerY = self.view.frame.size.height / 2;
    CGRect stackViewRect = CGRectMake(0, 0, 200, 240);
    _registerStackView = [[UIStackView alloc] initWithFrame:stackViewRect];
    [_registerStackView setBackgroundColor:[UIColor yellowColor]];
    [_registerStackView setAxis:UILayoutConstraintAxisVertical];
    [_registerStackView setDistribution:UIStackViewDistributionFillProportionally];
    [_containerView addSubview:_registerStackView];
    [_registerStackView setCenter:CGPointMake(centerX, centerY)];
    
    [_registerStackView addArrangedSubview:_firstNameField];
    [_registerStackView addArrangedSubview:_surnameField];
    [_registerStackView addArrangedSubview:_usernameField];
    [_registerStackView addArrangedSubview:_passwordField];
    [_registerStackView addArrangedSubview:_passRepeatField];
    [_registerStackView addArrangedSubview:_registerButton];
}

- (void)completeRegistration {
    //TODO: setup saving of credentials
    [delegate successfulRegistration];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
