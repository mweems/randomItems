//
//  main.m
//  RandomItems
//
//  Created by Matt Weems on 27/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        BNRItem *backPack = [[BNRItem alloc] initWithItemName:@"BackPack"];
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:backPack];
        [items addObject:calculator];
//        backPack.containedItem = calculator;
        backPack = nil;
        calculator = nil;
        for (BNRItem *item in items)
            NSLog(@"%@", item);
        NSLog(@"Setting item to nil...");
              items = nil;
    }
        return 0;
}
