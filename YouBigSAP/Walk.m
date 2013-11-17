//
//  Walk.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "Walk.h"
#import "POI.h"

@implementation Walk
-(id) initWithName:(NSString *)aName
{
    self = [super init];
    if( self )
    {
        self.name = aName;
        self.description = @"Placeholder description";
        self.picture = [UIImage imageNamed:@"walk_placeholder.png"];
        POI *aPOI = [[POI alloc] initWithLatitude:49.278683 longitude:-123.119016];
        self.pois = [[NSArray alloc] initWithObjects:aPOI, nil];
    }
    return self;
}
@end
