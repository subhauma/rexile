//
//  RexAppDelegate.h
//  Rex
//
//  Created by Subha  Gollakota on 1/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RexViewController;

@interface RexAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RexViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RexViewController *viewController;

@end

