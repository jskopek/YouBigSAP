//
//  Walk.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "Walk.h"

@implementation Walk
-(id) initWithName:(NSString *)aName
{
    self = [super init];
    if( self )
    {
        self.name = aName;
    }
    return self;
}
@end
