//
//  WalkOverviewViewController.h
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Walk.h"

@interface WalkOverviewViewController : UIViewController
@property (strong, nonatomic) Walk *walk;
-(id) initWithWalk:(Walk *)aWalk;
@end
