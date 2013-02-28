//
//  ViewController.m
//  Haileybury MUN
//
//  Created by Oliver Hirschfield on 01/11/2012.
//  Copyright (c) 2012 Oliver Hirschfield. All rights reserved.
//

#import "ViewController.h"

#define METERS_PER_MILE 1609.344

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    /* Loads page for Approved Resolutions  */
    [page loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://app.hmunforums.com/approved.php" ]]];
    [super viewDidLoad];
    
    /* Loads page for Rejected Resolutions  */
    [pageB loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://app.hmunforums.com/rejected.php" ]]];
    [super viewDidLoad];
    
    /*  PDF Loading  */
    NSString *path = [[NSBundle mainBundle] pathForResource:@"delguide" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    [PDF loadRequest:[NSURLRequest requestWithURL:targetURL]];
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 51.77889;
    zoomLocation.longitude= -0.03350;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.2*METERS_PER_MILE, 0.2*METERS_PER_MILE);
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
}




- (IBAction)refresh
{
    [page reload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)dealloc {
    [_mapView release];
    [super dealloc];
}
@end

