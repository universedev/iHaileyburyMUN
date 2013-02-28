//
//  ViewController.h
//  Haileybury MUN
//
//  Created by Oliver Hirschfield on 01/11/2012.
//  Copyright (c) 2012 Oliver Hirschfield. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController {

    IBOutlet UIWebView *page;
    IBOutlet UIWebView *pageB;
    IBOutlet UIWebView *PDF;

    
}

@property (retain, nonatomic) IBOutlet MKMapView *mapView;


@end

