//
//  ReqController.m
//  client0
//
//  Created by Naga Gollakota on 12/21/10.
//  Copyright 2010 MIT. All rights reserved.
//

#import "ReqController.h"


@implementation ReqController
- (IBAction)get:(id)sender {
	handler = [[ReqHandler alloc]init];
	
	[getField setStringValue:[handler sendGet]];
}
- (IBAction)post:(id)sender {
	handler = [[ReqHandler alloc]init];
	
	[handler sendPost:[postField stringValue]];
}

@end
