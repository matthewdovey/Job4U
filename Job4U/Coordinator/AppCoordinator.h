//
//  AppCoordinator.h
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coordinator.h"

@interface AppCoordinator : NSObject <Coordinator>
@property (nonatomic, retain) UIViewController *rootViewController;
- (id)initWithWindow:(UIWindow*)window;
@end
