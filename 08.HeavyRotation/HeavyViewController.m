//
//  HeavyViewController.m
//  08.HeavyRotation
//
//  Created by SteckDEV on 3/6/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import "HeavyViewController.h"

@interface HeavyViewController ()

@end

@implementation HeavyViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    // Return YES if incoming orientation is Portrait
    // or either of the Landscapes, otherwise, return NO
    return (x == UIInterfaceOrientationPortrait)
    || UIInterfaceOrientationIsLandscape(x);
}

@end
