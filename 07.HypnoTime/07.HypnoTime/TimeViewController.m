//
//  TimeViewController.m
//  07.HypnoTime
//
//  Created by SteckDEV on 2/26/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import "TimeViewController.h"

@interface TimeViewController()

@property (nonatomic, strong) IBOutlet UILabel *timeLabel;



@end


@implementation TimeViewController

- (IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [[self timeLabel] setText:[formatter stringFromDate:now]];
}

@end
