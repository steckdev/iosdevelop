//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Tyler Steck on 12/26/12.
//  Copyright (c) 2012 LANDesk. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (id)init
{
    return [self initWIthItemName:@"Item"
                   valueInDollars:0
                     serialNumber:@""];
}

- (id)initWIthItemName: (NSString *)name
valueInDollars:(int)value
serialNumber:(NSString *)sNumber
{
    //Call the superclass' designated initializer
    self = [super init];
    //Did the superclass' designated initializer succeed?
    if (self) {
    //Give the instance variables initial values
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    }
    //Return the address of the newly initialized object
    return self;
}

- (void)setItemName:(NSString *)str
{
    itemName = str;
}
- (NSString *)itemName
{
    return itemName;
}
- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
- (NSString *)serialNumber
{
    return serialNumber;
}
- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}
- (int)valueInDollars
{
    return valueInDollars;
}
- (NSDate *)dateCreated
{
    return dateCreated;
}
- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                    itemName,
                    serialNumber,
                    valueInDollars,
                    dateCreated];
    return descriptionString;
}


@end
