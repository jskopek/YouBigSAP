//
//  Walk.h
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Walk : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) UIImage *picture;
@property (strong, nonatomic) NSArray *pois;
-(id) initWithName:(NSString *)aName;
@end
