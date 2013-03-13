//
//  BNRItemStore.h
//  09.Homepwner
//
//  Created by SteckDEV on 3/12/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItemStore : NSObject
{
    
}
// Notice that this is a class method and prefixed with a + instead of a -
+ (BNRItemStore *)sharedStore;

@end
