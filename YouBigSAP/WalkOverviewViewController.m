//
//  WalkOverviewViewController.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "WalkOverviewViewController.h"

@interface WalkOverviewViewController ()

@end

@implementation WalkOverviewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Add a label with the walk name
    UILabel *walkNameLabel = [[UILabel alloc] init];
    walkNameLabel.frame = CGRectMake(0, 100, 320, 50);
    walkNameLabel.text = self.walkName;
    [self.view addSubview:walkNameLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
