//
//  RexViewController.m
//  Rex
//
//  Created by Subha  Gollakota on 1/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RexViewController.h"

@implementation RexViewController

@synthesize timer;
@synthesize picker;
@synthesize start;
@synthesize duration;
@synthesize minutes;
@synthesize seconds;
@synthesize time;

-(IBAction)changeTimer:(id)sender{
	
	time = [picker countDownDuration];
	minutes = time/60;
	seconds = 0;
	
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
	
	[picker setHidden:TRUE];
	[duration setHidden:FALSE];
}

-(void)countDown {
	if (seconds >= 1) {
		seconds = seconds - 1;
	}
	if(seconds == 0 && minutes >= 1){
		minutes = minutes - 1;
		seconds = 59;
	}
	if(seconds == 0 && minutes == 0){
		[timer invalidate];
		[picker setDate:(NSDate *)0];
		[duration setHidden:TRUE];
		[picker setHidden:FALSE];
	}
	[self updateLabel];	
	
}

-(void)updateLabel {
	duration.text = [NSString stringWithFormat:@"%i:%2i",minutes, seconds];
		
	NSLog(@"%i", minutes);
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[picker release];
	[timer release];
    [super dealloc];
}

@end
