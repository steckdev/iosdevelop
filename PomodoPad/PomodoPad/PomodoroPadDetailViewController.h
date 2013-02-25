//
//  PomodoroPadDetailViewController.h
//  PomodoPad
//
//  Created by SteckDEV on 2/24/13.
//  Copyright (c) 2013 com.SteckDEV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PomodoroPadDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
