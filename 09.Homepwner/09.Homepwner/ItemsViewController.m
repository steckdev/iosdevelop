//
//  ItemsViewController.m
//  09.Homepwner
//
//  Created by SteckDEV on 3/11/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
        
    }
    return self;
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

@end
