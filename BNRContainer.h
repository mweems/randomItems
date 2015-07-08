//
//  BNRContainer.h
//  RandomItems
//
//  Created by Matt Weems on 29/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
@interface BNRContainer: BNRItem

@property (nonatomic, copy)NSArray *_items;
@property (nonatomic, readonly)int valueInContainer;

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serial itemList:(NSArray *)items;

@end