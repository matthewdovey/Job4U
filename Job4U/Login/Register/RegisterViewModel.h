//
//  RegisterViewModel.h
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

@interface RegisterViewModel : NSObject

@property (nonatomic, getter=getFirstNamePlaceholder) NSString *firstNamePlaceholder;
@property (nonatomic, getter=getSurnamePlaceholder) NSString *surnamePlaceholder;
@property (nonatomic, getter=getUsernamePlaceholder) NSString *usernamePlaceholder;
@property (nonatomic, getter=getPasswordPlaceholder) NSString *passwordPlaceholder;
@property (nonatomic, getter=getConfirmPlaceholder) NSString *confirmPlaceholder;
@property (nonatomic, getter=getButtonTitle) NSString *registerButtonTitle;

@end
