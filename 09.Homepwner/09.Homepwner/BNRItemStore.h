//
//  BNRItemStore.h
//  09.Homepwner
//
//  Created by SteckDEV on 3/12/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;


@interface BNRItemStore : NSObject
{
 NSMutableArray *allItems;   
}
// Notice that this is a class method and prefixed with a + instead of a -
+ (BNRItemStore *)sharedStore;

- (NSArray *)allItems;
- (BNRItem *)createItem;

@end
