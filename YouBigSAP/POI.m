//
//  Point.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "POI.h"

@implementation POI
-(id)initWithLatitude:(double)aLatitude longitude:(double)aLongitude
{
    self = [super init];
    if(self)
    {
        self.name = @"Placeholder name";
        self.latitude = [NSNumber numberWithDouble:aLatitude];
        self.longitude = [NSNumber numberWithDouble:aLongitude];
    }
    return self;
}
@end