//
//  RexViewController.h
//  Rex
//
//  Created by Subha  Gollakota on 1/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RexViewController : UIViewController {
	
	IBOutlet UIDatePicker * picker;
	IBOutlet UIButton * start;
	IBOutlet UILabel * duration;
	NSTimer  *timer;
	
	NSInteger seconds;
	NSInteger minutes;
	NSInteger time;

}

@property(nonatomic, retain) NSTimer * timer;
@property(nonatomic, retain) UIDatePicker *picker;
@property(nonatomic, retain) UIButton *start;
@property(nonatomic, retain) UILabel *duration;
@property(nonatomic) NSInteger time;
@property(nonatomic) NSInteger seconds;
@property(nonatomic) NSInteger minutes;


-(IBAction)changeTimer:(id)sender;
-(void)updateLabel;


@end

