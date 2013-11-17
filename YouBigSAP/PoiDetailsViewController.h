//
//  PoiDetailsViewController.h
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/17/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "POI.h"

@interface PoiDetailsViewController : UIViewController
@property (strong, nonatomic) POI *poi;
-(id) initWithPoi:(POI *)aPoi;
@end
