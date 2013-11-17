//
//  Point.h
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface POI : NSObject <MKAnnotation>
@property CLLocationCoordinate2D coordinate;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *pictureLocation;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSNumber *longitude;
-(id) initWithLatitude:(double)aLatitude longitude:(double)aLongitude;
@end
