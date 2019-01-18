//
//  LoginDelegate.h
//  Job4U
//
//  Created by Matthew Dovey on 18/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

@protocol LoginDelegate <NSObject>

- (void)showSignInScreen;
- (void)showRegisterScreen;

@end
