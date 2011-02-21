//
//  RootViewController.h
//  NavApp
//
//  Created by Subha  Gollakota on 1/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewTwoController.h"


@interface ViewOneController : UIViewController {
	
	ViewTwoController *viewTwoController;

}

@property (nonatomic, retain) ViewTwoController *viewTwoController;
-(IBAction)switchPage:(id)sender;

@end
