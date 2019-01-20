//
//  LoginVoewModel.h
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

@interface LoginViewModel : NSObject

@property (nonatomic, getter=getAppTitle) NSString *appTitle;
@property (nonatomic, getter=getSignInTitle) NSString *signInTittle;
@property (nonatomic, getter=getRegisterTitle) NSString *registerTitle;

@end
