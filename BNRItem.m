//
//  BNRItem.m
//  RandomItems
//
//  Created by Matt Weems on 27/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randomItem
{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny", @"Old", @"New"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Pick Axe", @"Voodoo Doll", @"Computer"];
    NSInteger adjectiveIndex = arc4random() %[randomAdjectiveList count];
    NSInteger nounIndex = arc4random() %[randomNounList count];
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + arc4random() % 10, '0' + arc4random() % 10, '0' + arc4random() % 10, '0' + arc4random() % 10, 'A' + arc4random() % 26];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
    
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serial
{
    self = [super init];
    if (self) {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = serial;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)serial
{
    return [self initWithItemName: name valueInDollars: 0 serialNumber:serial];
}
- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName: name valueInDollars: 0 serialNumber:@""];
}
- (instancetype)init
{
    return [self initWithItemName:@""];
}
- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@) : Worth $%d, recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.dateCreated];
    return descriptionString;
}
- (void)setContainedItem: (BNRItem *)containedItem
{
    _containedItem = containedItem;
    self.containedItem.container = self;
}
- (void)dealloc
{
    NSLog(@"%@", self);
}


@end
