//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Tyler Steck on 12/13/12.
//  Copyright (c) 2012 LANDesk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

@end
