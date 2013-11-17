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
//-(id) initWithName:(NSString *)aName
//{
//    self = [super init];
//    if( self )
//    {
//        self.name = aName;
//        self.description = @"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";
//        self.pictureLocation = @"walk_placeholder.jpg";
//        POI *poiOne = [[POI alloc] initWithLatitude:49.278683 longitude:-123.119016];
//        poiOne.name = @"";
//        poiOne.pictureLocation = @"poi1.png";
//        poiOne.description = @"“";
//        
//        POI *poiTwo = [[POI alloc] initWithLatitude:49.287303 longitude:-123.133113];
//        poiTwo.name = @"";
//        poiTwo.pictureLocation = @"poi2.png";
//        poiTwo.description = @"";
//        
//        self.pois = [[NSArray alloc] initWithObjects:poiOne, poiTwo, nil];
//    }
//    return self;
//}
-(id) initWIthJSON:(NSDictionary *)JSON
{
    self = [super init];
    if( self )
    {
        // Initialize walk
        self.name = JSON[@"name"];
        self.description = JSON[@"description"];
        self.pictureLocation = JSON[@"pictureLocation"];
        
        // Initialize points
        NSMutableArray *points = [[NSMutableArray alloc] init];
        for( NSDictionary *poiJSON in JSON[@"points"] )
        {
            POI *aPoi = [[POI alloc] initWithJSON:poiJSON];
            [points addObject:aPoi];
        }
        self.pois = points;
    }
    return self;
}
-(MKCoordinateRegion) poiCoordinateRegionWithPadding:(double)padding
{
    NSMutableArray *lats = [[NSMutableArray alloc] init];
    NSMutableArray *lngs = [[NSMutableArray alloc] init];
    for(POI *aPOI in self.pois)
    {
        [lats addObject:aPOI.latitude];
        [lngs addObject:aPOI.longitude];
    }
    [lats sortedArrayUsingSelector:@selector(compare:)];
    [lngs sortedArrayUsingSelector:@selector(compare:)];
    
    double smallestLat = [[lats objectAtIndex:0] doubleValue];
    double largestLat = [[lats lastObject] doubleValue];
    double smallestLng = [[lngs objectAtIndex:0] doubleValue];
    double largestLng = [[lngs lastObject] doubleValue];
    
    CLLocationCoordinate2D centerCoordinate = CLLocationCoordinate2DMake((smallestLat + largestLat) / 2, (smallestLng + largestLng) / 2);
    MKCoordinateSpan span = MKCoordinateSpanMake(fabs(largestLat - smallestLat) + padding, fabs(largestLng - smallestLng) + padding);
    MKCoordinateRegion coordinateRegion = MKCoordinateRegionMake(centerCoordinate, span);
    return coordinateRegion;
}
@end
