//
//  WhereamiViewController.h
//  04.Whereami
//
//  Created by SteckDEV on 1/28/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@end
