//
//  main.m
//  RandomPossessions
//
//  Created by Tyler Steck on 12/14/12.
//  Copyright (c) 2012 LANDesk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        /* Pre-final method
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        //insert atIndex:0
        [items insertObject:@"Zero" atIndex:0];
        
        for(int i = 0; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
            
        }
        
        BNRItem *p = [[BNRItem alloc] init];
        
        NSLog(@"%@", p);
        
        [p setItemName:@"RedSofa"];
        [p setSerialNumber:@"A1B2C"];
        [p setValueInDollars:100];
        
        //NSLog(@"%@ %@ %@ %d", [p itemName], [p dateCreated], [p serialNumber], [p valueInDollars]);
        
         // */
        
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                        valueInDollars:100
                                          serialNumber:@"A1B2C"];
        
        //Remember, an NSLog with %@ as the token will print the
        //description of the corresponding argument
        NSLog(@"%@",p);
        
        items = nil;
    }
    return 0;
}

