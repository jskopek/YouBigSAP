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
        if([self respondsToSelector:@selector(edgesForExtendedLayout)])
        {
            //http://www.brianjcoleman.com/ios7-weve-got-a-problem/
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
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
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Set up a scrollview
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    scrollView.contentSize = CGSizeMake(320, 680);
    [self.view addSubview:scrollView];
    
    // Add walk image
    UIImageView *walkImage = [[UIImageView alloc] initWithImage: [UIImage imageNamed:self.walk.pictureLocation]];
    walkImage.frame = CGRectMake(0, 0, 320, 220);
    [scrollView addSubview:walkImage];
    
    // Add a label with the walk name
    UILabel *walkNameLabel = [[UILabel alloc] init];
    walkNameLabel.frame = CGRectMake(10, 180, 320, 40);
    walkNameLabel.text = self.walk.name;
    walkNameLabel.textColor = [UIColor whiteColor];
    walkNameLabel.font = [UIFont boldSystemFontOfSize:20];
    [scrollView addSubview:walkNameLabel];
    
    // Add a start button
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startButton.frame = CGRectMake(10, 230, 300, 40);
    [startButton setTitle:@"Show Map" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(showMap) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:startButton];
    
    // Add a description field
    UITextView *walkDescription = [[UITextView alloc] init];
    walkDescription.frame = CGRectMake(10, 270, 300, 0);
    walkDescription.scrollEnabled = NO;
    walkDescription.text = self.walk.description;
    [walkDescription sizeToFit];
    
    // resize the scrollview
    CGFloat newHeight = walkDescription.frame.origin.y + walkDescription.bounds.size.height;
    scrollView.contentSize = CGSizeMake(320, newHeight);

    [scrollView addSubview:walkDescription];
}
- (void)showMap
{
    NSLog(@"Show Map");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
