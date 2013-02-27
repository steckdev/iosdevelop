//
//  HypnosisViewController.m
//  07.HypnoTime
//
//  Created by SteckDEV on 2/26/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    // Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as  the *the* view of this view controller
    [self setView:v];
}
@end
