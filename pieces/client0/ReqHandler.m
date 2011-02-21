//
//  ReqHandler.m
//  client0
//
//  Created by Subha Gollakota on 12/21/10.
//  Copyright 2010 MIT. All rights reserved.
//

#import "ReqHandler.h"
#import "JSON.h"


@implementation ReqHandler

- (NSString *) sendGet {
	
	NSURL *url = [ NSURL URLWithString:[ NSString stringWithFormat: @"http://localhost:50000/www.google.com" ] ];
	NSURLRequest *request = [ NSURLRequest requestWithURL: url ];
	
	NSData *returnData = [ NSURLConnection sendSynchronousRequest:request returningResponse: nil error: nil ];
	
	NSString *one = @"one";
	NSString *two = @"one";
	if ([one isEqualToString:two]) {
		NSLog(@"same");
	}

	
	if (!returnData) {
		NSLog(@"uh-oh");
	}
	
	return @"Fetched Message.";
}
- (void) sendPost:(NSString*)post {
	
	NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
						  @"value1", @"key1", @"value2", @"key2", nil];
	SBJsonWriter *writer = [[SBJsonWriter alloc] init];
	NSString * json_string = [writer stringWithObject:dict];
	
	post = json_string;
	NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
	
	NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
	
	NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
	[request setURL:[NSURL URLWithString:@"http://localhost:50000/www.google.com"]];
	[request setHTTPMethod:@"POST"];
	[request setValue:postLength forHTTPHeaderField:@"Content-Length"];
	[request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
	[request setHTTPBody:postData];
	
	NSData *returnData = [ NSURLConnection sendSynchronousRequest:request returningResponse: nil error: nil ];
	
	if (!returnData) {
		NSLog(@"uh oh post!");
	}
	
	//parse out the reply!
	json_string = [[NSString alloc] initWithData:returnData encoding:NSASCIIStringEncoding];
	SBJsonParser *parser = [[SBJsonParser alloc] init];
	NSDictionary *dict2 = [parser objectWithString:json_string error:nil];
	
	NSLog( @"reply value is : %@ \n", (NSString *)([dict2 objectForKey:@"key1"]));
	
}

@end
