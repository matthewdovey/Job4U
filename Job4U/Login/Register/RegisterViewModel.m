//
//  RegisterViewModel.m
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegisterViewModel.h"

@interface RegisterViewModel ()

@end

@implementation RegisterViewModel

- (NSString*)getButtonTitle {
    return @"Register";
}

- (NSString*)getFirstNamePlaceholder {
    return @"First Name";
}

- (NSString*)getSurnamePlaceholder {
    return @"Surname";
}

- (NSString*)getUsernamePlaceholder {
    return @"Username";
}

- (NSString*)getPasswordPlaceholder {
    return @"Password";
}

- (NSString*)getConfirmPlaceholder {
    return @"Password";
}

@end
