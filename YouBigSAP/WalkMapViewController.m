//
//  WalkMapViewController.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "WalkMapViewController.h"
#import "POI.h"

@interface WalkMapViewController ()

@end

@implementation WalkMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Map";
    }
    return self;
}
- (id)initWithWalk:(Walk *)aWalk
{
    self = [super init];
    if( self )
    {
        self.walk = aWalk;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view.
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    
    POI *aPOI = self.walk.pois[0];
    myLabel.text = [NSString stringWithFormat:@"latitude: %@ longitude: %@", aPOI.latitude, aPOI.longitude];
    [self.view addSubview:myLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
