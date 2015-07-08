//
//  BNRItem.h
//  RandomItems
//
//  Created by Matt Weems on 27/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface BNRItem : NSObject


@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

+ (instancetype)randomItem;

// Default initializer
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serial;
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)serial;
- (instancetype)initWithItemName:(NSString *)name;

@end