//
//  WalkMapViewController.m
//  YouBigSAP
//
//  Created by Jean-Marc Skopek on 11/16/2013.
//  Copyright (c) 2013 Jean-Marc Skopek. All rights reserved.
//

#import "WalkMapViewController.h"
#import "PoiDetailsViewController.h"
#import "POI.h"
#import "MapKit/MapKit.h"

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

	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    // Initialize Map View
    MKMapView *mapView = [[MKMapView alloc] init];
    mapView.frame = [self.view bounds];
    mapView.showsUserLocation = YES;
    mapView.delegate = self;
    [self.view addSubview:mapView];

    // Add all Points of Interest
    for(POI *aPOI in self.walk.pois)
    {
        MKAnnotationView *anAnnotation = [[MKAnnotationView alloc] initWithAnnotation:aPOI reuseIdentifier:@"poiAnnotation"];
        [mapView addAnnotation:anAnnotation.annotation];
    }
    MKCoordinateRegion coordRegion = [self.walk poiCoordinateRegionWithPadding:0.01];
    [mapView setRegion:coordRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    PoiDetailsViewController *poiDetailsView = [[PoiDetailsViewController alloc] initWithPoi:view.annotation];
    [self.navigationController pushViewController:poiDetailsView animated:YES];
}


@end
