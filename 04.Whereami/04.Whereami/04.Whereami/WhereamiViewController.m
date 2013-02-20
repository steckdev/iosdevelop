//
//  WhereamiViewController.m
//  04.Whereami
//
//  Created by SteckDEV on 1/28/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

#import "WhereamiViewController.h"

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
        [locationManager startUpdatingLocation];
        
        [locationManager startUpdatingHeading];
        

    }
    return self;

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

- (void)dealloc
{
    //Tell the location manager to stop sending us messages
    [locationManager setDelegate:nil];
}
@end
