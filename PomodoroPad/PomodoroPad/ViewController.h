//
//  ViewController.h
//  PomodoroPad
//
//  Created by SteckDEV on 2/24/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *UITimerLabel;
@property (weak, nonatomic) NSTimer *timer;

-(IBAction)start:(id)sender;

@end
