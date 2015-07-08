//
//  BNRContainer.m
//  RandomItems
//
//  Created by Matt Weems on 29/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//
#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serial itemList:(NSArray *)items
{
    self = [super init];
    if (self) {
        self.itemName = name;
        self.valueInDollars = value;
        self.serialNumber = serial;
        items = items;
    }
    return self;
}
- (int) valueInContainer
{
    return [self getContainerValue];
}
- (int) getContainerValue
{
    int total = 0;
    for(BNRItem *item in self._items)
    {
        total += item.valueInDollars;
    }
    return total;
}
- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@) : Worth $%d, containing items worth $%d, recorded on %@, contains %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.valueInContainer,
                                   self.dateCreated,
                                   self._items];
    
    return descriptionString;
}

@end

