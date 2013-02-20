//
//  BNRMapPoint.m
//  05.Wherami
//
//  Created by SteckDEV on 2/13/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "BNRMapPoint.h"

@implementation BNRMapPoint

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        _coordinate = c;
        [self setTitle:t];
        [self setSubtitle:[NSDateFormatter localizedStringFromDate:[NSDate date] dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterShortStyle]];
    }
    return self;
}


@end
