//
//  LoginButton.m
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import "LoginButton.h"

@interface LoginButton ()
@property (nonatomic, assign) UIColor* backgroundColor;
@property (nonatomic, assign) UIColor* fontColor;
@end

@implementation LoginButton

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        if (_fontColor == nil) {_fontColor = UIColor.blackColor;}
        if (_backgroundColor == nil) {_backgroundColor = UIColor.redColor;}
        [self createLoginButton:self withBackgroundColor: _backgroundColor withFontColor: _fontColor];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
withBackgroundColor:(UIColor*)backgroundColor
{
    self = [super initWithFrame:frame];
    if (self) {
        if (_fontColor == nil) {_fontColor = UIColor.blackColor;}
        [self createLoginButton:self withBackgroundColor: _backgroundColor withFontColor: _fontColor];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
withBackgroundColor:(UIColor *)backgroundColor
      withFontColor:(UIColor*)fontColor {
    self = [super initWithFrame:frame];
    if (self) {
        if (_fontColor == nil) {_fontColor = fontColor;}
        if (_backgroundColor == nil) {_backgroundColor = backgroundColor;}
        [self createLoginButton:self withBackgroundColor: _backgroundColor withFontColor: _fontColor];
    }
    return self;
}

- (void)createLoginButton:(LoginButton*)button
      withBackgroundColor:(UIColor*)backgroundColor
            withFontColor:(UIColor*)fontColor
{
    [button setFontColor:_fontColor];
    [button setBackgroundColor:_backgroundColor];
}

@end
