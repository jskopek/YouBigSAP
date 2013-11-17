//
//  WalksModel.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "WalksModel.h"
#import "Walk.h"

@implementation WalksModel
-(id) initWithData
{
    self = [super init];
    if( self )
    {
        self.walksArray = [[NSArray alloc] initWithObjects:
                           [[Walk alloc] initWithName:@"Walk one"],
                           [[Walk alloc] initWithName:@"Walk two"],
                           [[Walk alloc] initWithName:@"Walk three"],
                           nil];
    }
    return self;
}
@end
