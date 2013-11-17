//
//  Walk.h
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Walk : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *pictureLocation;
@property (strong, nonatomic) NSArray *pois;
//-(id) initWithName:(NSString *)aName;
-(id) initWIthJSON: (NSDictionary *)JSON;
-(MKCoordinateRegion) poiCoordinateRegionWithPadding:(double)padding;
@end
