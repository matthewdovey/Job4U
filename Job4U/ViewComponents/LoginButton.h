//
//  LoginButton.h
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginButton : UIButton

// Enum to define button state
typedef NS_ENUM(NSInteger, ButtonState) {
    normalState,
    invertedState
};

- (id)initWithFrame:(CGRect)frame withBackgroundColor:(UIColor*)backgroundColor;
- (ButtonState*) buttonState;
- (void) setButtonState: (ButtonState*)buttonState;

@end
