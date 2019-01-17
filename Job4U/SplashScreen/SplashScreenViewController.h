//
//  SplashScreenViewController.h
//  Job4U
//
//  Created by Matthew Dovey on 15/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplashScreenDelegate.h"

@interface SplashScreenViewController : UIViewController

@property (nonatomic, weak) id <SplashScreenDelegate> delegate;

@end
