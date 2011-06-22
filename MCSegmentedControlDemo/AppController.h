//
//  MCSegmentedControlDemoAppDelegate.h
//  MCSegmentedControlDemo
//
//  Created by Matteo Caldari on 13/02/11.
//  Copyright 2011 Matteo Caldari. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MCSegmentedControlDemoViewController;

@interface AppController : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MCSegmentedControlDemoViewController *viewController;

@end
