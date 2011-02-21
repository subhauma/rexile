//
//  ReqController.h
//  client0
//
//  Created by Naga Gollakota on 12/21/10.
//  Copyright 2010 MIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReqHandler.h"

@interface ReqController : NSObject {
	IBOutlet NSTextField *postField;
	IBOutlet NSTextField *getField;
	ReqHandler *handler;
}

- (IBAction)get:(id)sender;
- (IBAction)post:(id)sender;

@end
