//
//  BNRItemStore.m
//  09.Homepwner
//
//  Created by SteckDEV on 3/12/13.
//  Copyright (c) 2013 com.steckdev. All rights reserved.
//

#import "BNRItemStore.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    return sharedStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

@end
