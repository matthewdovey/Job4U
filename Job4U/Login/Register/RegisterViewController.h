//
//  RegisterViewController.h
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterDelegate.h"
#import "RegisterViewModel.h"

@interface RegisterViewController : UIViewController

@property (nonatomic, weak) id <RegisterDelegate> delegate;

- (void)setViewModel:(RegisterViewModel*) viewModel;

@end
