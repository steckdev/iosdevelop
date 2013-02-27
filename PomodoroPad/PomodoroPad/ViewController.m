//
//  ViewController.m
//  PomodoroPad
//
//  Created by SteckDEV on 2/24/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //_UITimerLabel.text = @"Value";
    [self updateLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateLabel
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"hh:mm:ss"];
    _UITimerLabel.text = [dateFormat stringFromDate:[NSDate date]];
    
    [self performSelector:@selector(updateTime) withObject:self afterDelay:1.0];
}

- (IBAction)start:(id)sender
{
    [timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:@selector userInfo:nil repeats:YES]];
    
    
}

@end
