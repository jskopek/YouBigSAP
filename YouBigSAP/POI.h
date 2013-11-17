//
//  Point.h
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface POI : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSNumber *longitude;
-(id) initWithLatitude:(double)aLatitude longitude:(double)aLongitude;
@end
