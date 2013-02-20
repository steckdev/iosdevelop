//
//  WhereamiViewController.m
//  05.Wherami
//
//  Created by SteckDEV on 2/12/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        // Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        //There will be a warning from this line of code; ignore it for now
        [locationManager setDelegate:self];
        
        [locationManager setDistanceFilter:50];
        
        //We want it to be accurate (Use towers)
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //Tell our manager to start looking for the location immediately
 //       [locationManager startUpdatingLocation];
        
        [locationManager startUpdatingHeading];
        
        
    }
    return self;
    
}

- (void)locationManager:(CLLocationManager *)manager
didUpdateLocations:(NSArray *)locations
{
    CLLocation *newLocation = [locations lastObject];
    NSLog(@"%@", newLocation);
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    if (t < -180) {
        return;
    }
    
    [self foundLocation:newLocation];
    
}

- (IBAction)SegmentAction:(id)sender
{
    switch([sender selectedSegmentIndex])
    {
        case 0:
            _worldView.mapType = MKMapTypeStandard;
            break;
        case 1:
            _worldView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            _worldView.mapType = MKMapTypeHybrid;
            break;
    }
}

- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [[self activityIndicator] startAnimating];
    [[self locationTitleField] setHidden:YES];
}

- (void)foundLocation:(CLLocation *) loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate: coord
                                                        title:[_locationTitleField text]];
    [[self worldView] addAnnotation:mp];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [[self worldView] setRegion:region animated:YES];
    
    [[self locationTitleField] setText:@""];
    [[self activityIndicator] stopAnimating];
    [[self locationTitleField] setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (BOOL)textFieldShouldReturn:(UITextField *) textField
{
    [self findLocation];
    
    [textField resignFirstResponder];
    
    return YES;
}

-(void)mapView:(MKMapView *)mapView
            didUpdateUserLocation:(MKUserLocation *)userLocation
                {
                    CLLocationCoordinate2D loc = [userLocation coordinate];
                    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
                    [[self worldView] setRegion:region animated:YES];
                }

- (void)locationManager:(CLLocationManager *) manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

- (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager{
    return YES;
}

- (void) locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading{
    NSLog(@"New Heading: %@", newHeading);
}

- (void)locationManager:(CLLocationManager *) manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLoad
{
    [[self worldView] setShowsUserLocation:YES];
}

@end
