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

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        //Give it a label
        [tbi setTitle:@"Time"];
        
        UIImage *i = [UIImage imageNamed: @"Time.png"];
        [tbi setImage:i];
    }
    return self;
}

@end
