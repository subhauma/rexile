//
//  RootViewController.m
//  NavApp
//
//  Created by Subha  Gollakota on 1/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewOneController.h"


@implementation ViewOneController

@synthesize viewTwoController;

-(IBAction)switchPage:(id) sender
{
	if(self.viewTwoController == nil)
	{
		ViewTwoController *viewTwo = [[ViewTwoController alloc] 
									  initWithNibName:@"View2" bundle:[NSBundle mainBundle]];
		self.viewTwoController = viewTwo;
		[viewTwo release];
	}
	
	[self.navigationController pushViewController:self.viewTwoController animated:YES];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSLog(@"wahh");
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
