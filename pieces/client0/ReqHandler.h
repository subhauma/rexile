//
//  ReqHandler.h
//  client0
//
//  Created by Naga Gollakota on 12/21/10.
//  Copyright 2010 MIT. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ReqHandler : NSObject {
}

-(NSString *) sendGet;
-(void) sendPost:(NSString*)post;

@end
