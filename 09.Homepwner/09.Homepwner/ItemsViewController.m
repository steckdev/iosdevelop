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
        for (int i = 0; i < 25; i++) {
            [[BNRItemStore sharedStore] createItem];
        }
        
    }
    return self;
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    NSPredicate *predicate;
    if (section == 0) {
        predicate = [NSPredicate predicateWithFormat:@"valueInDollars > 50"];
    } else {
        predicate = [NSPredicate predicateWithFormat:@"valueInDollars <= 50"];
    }
    
    NSArray *filteredArray = [[[BNRItemStore sharedStore] allItems] filteredArrayUsingPredicate:predicate];
    NSInteger numRows = [filteredArray count];
    return numRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Create an instance of UITableViewCell, with default appearance
    //UITableViewCell *cell =
    //[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
    //                       reuseIdentifier:@"UITableViewCell"];
    
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"UITableViewCell"];
    }
    
    // Bronze Challenge - Create predicate to filter the array using valueInDollars search string
    NSPredicate *predicate;
    if ([indexPath section] == 0) {
        predicate = [NSPredicate predicateWithFormat:@"valueInDollars > 50"];
    } else {
        predicate = [NSPredicate predicateWithFormat:@"valueInDollars <= 50"];
    }
    
    // Create a filtered array based on the predicate
    NSArray *filteredArray = [[[BNRItemStore sharedStore] allItems] filteredArrayUsingPredicate:predicate];
    // Create item to be used for the cell using the filtered array
    BNRItem *item = [filteredArray objectAtIndex:[indexPath row]];
    // Set the cell's text using the item
    [[cell textLabel] setText:[item description]];
    return cell;
}

@end
