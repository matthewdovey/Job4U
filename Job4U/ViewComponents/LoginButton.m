//
//  LoginButton.m
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import "LoginButton.h"

@interface LoginButton ()

@end

@implementation LoginButton

- (id)initWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor {
    self = [super initWithFrame:frame];
    if (self) {
        [self createLoginButton:self withBackgroundColor: UIColor.redColor];
    }
    return self;
}

- (void)createLoginButton:(LoginButton*)button withBackgroundColor:(UIColor*)backgroundColor {
    button.frame = CGRectMake(0, 0, 100, 40);
    button.backgroundColor = backgroundColor;
}

@end
