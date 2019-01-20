//
//  LoginViewModel.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewModel.h"

@interface LoginViewModel ()

@end

@implementation LoginViewModel

- (NSString*) getAppTitle {
    return @"Job4U";
}

- (NSString*) getSignInTitle {
    return @"Sign In";
}

- (NSString*) getRegisterTitle {
    return @"Register";
}

@end
