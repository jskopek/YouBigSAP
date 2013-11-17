//
//  PoiDetailsViewController.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/17/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "PoiDetailsViewController.h"

@interface PoiDetailsViewController ()

@end

@implementation PoiDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithPoi:(POI *)aPoi
{
    self = [super init];
    if( self )
    {
        self.poi = aPoi;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Set up a scrollview
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    scrollView.contentSize = CGSizeMake(320, 680);
    [self.view addSubview:scrollView];
    
    // Add walk image
    UIImageView *poiImage = [[UIImageView alloc] initWithImage: [UIImage imageNamed:self.poi.pictureLocation]];
    poiImage.frame = CGRectMake(0, 0, 320, 220);
    [poiImage setContentMode:UIViewContentModeScaleToFill];
    [scrollView addSubview:poiImage];
    
    // Add a label with the walk name
    UILabel *poiNameLabel = [[UILabel alloc] init];
    poiNameLabel.frame = CGRectMake(10, 180, 320, 40);
    poiNameLabel.text = self.poi.name;
    poiNameLabel.textColor = [UIColor whiteColor];
    poiNameLabel.font = [UIFont boldSystemFontOfSize:20];
    [scrollView addSubview:poiNameLabel];
    
    // Add a description field
    UITextView *poiDescription = [[UITextView alloc] init];
    poiDescription.frame = CGRectMake(10, 230, 300, 0);
    poiDescription.scrollEnabled = NO;
    poiDescription.text = self.poi.description;
    [poiDescription setFont:[UIFont systemFontOfSize:16]];
    [poiDescription sizeToFit];
    [poiDescription setEditable:NO];
    
    // resize the scrollview
    CGFloat newHeight = poiDescription.frame.origin.y + poiDescription.bounds.size.height;
    scrollView.contentSize = CGSizeMake(320, newHeight);
    
    [scrollView addSubview:poiDescription];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
