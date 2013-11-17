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
        self.description = @"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";
        self.pictureLocation = @"walk_placeholder.jpg";
        POI *aPOI = [[POI alloc] initWithLatitude:49.278683 longitude:-123.119016];
        self.pois = [[NSArray alloc] initWithObjects:aPOI, nil];
    }
    return self;
}
@end
