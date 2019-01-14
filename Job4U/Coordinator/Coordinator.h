//
//  Coordinator.h
//  Job4U
//
//  Created by Matthew Dovey on 14/01/2019.
//  Copyright © 2019 Matthew Dovey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//Basic coordinator with enterance point
@protocol Coordinator
//Start the flow governed by the coordinator
- (void)start;
@end
