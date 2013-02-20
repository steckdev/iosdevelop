//
//  WhereamiViewController.h
//  05.Wherami
//
//  Created by SteckDEV on 2/12/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface WhereamiViewController : UIViewController
<CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
}

@property (nonatomic, strong) IBOutlet MKMapView *worldView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (nonatomic, strong) IBOutlet UITextField *locationTitleField;
@property (nonatomic, strong) IBOutlet UISegmentedControl *SegControl;
- (IBAction)SegmentAction:(id)sender;


- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;

@end
