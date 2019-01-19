//
//  LoginViewController.h
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginDelegate.h"
#import "LoginViewModel.h"

@interface LoginViewController : UIViewController

@property (nonatomic, weak) id<LoginDelegate> delegate;

- (void)setViewModel:(LoginViewModel*) loginViewModel;

@end

