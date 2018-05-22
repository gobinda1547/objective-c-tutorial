//
//  ValidatingArray.m
//  Composit Object
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ValidatingArray.h"

@implementation ValidatingArray

- init{
    self = [super init];
    if (self) {
        embeddedArray = [[NSMutableArray alloc] init];
    }
    return self;
}

+ validatingArray{
    return [[self alloc] init] ;
}

- (NSUInteger)count{
    return [embeddedArray count];
}

- objectAtIndex:(unsigned)index{
    return [embeddedArray objectAtIndex:index];
}

- (void)addObject:(id)object{
    if (object != nil) {
        [embeddedArray addObject:object];
    }
}
- (void)replaceObjectAtIndex:(unsigned)index withObject:(id)object;{
    if (index <[embeddedArray count] && object != nil) {
        [embeddedArray replaceObjectAtIndex:index withObject:object];
    }
}
- (void)removeLastObject;{
    if ([embeddedArray count] > 0) {
        [embeddedArray removeLastObject];
    }
}
- (void)insertObject:(id)object atIndex:(unsigned)index{
    if (object != nil) {
        [embeddedArray insertObject:object atIndex:index];
    }
}
- (void)removeObjectAtIndex:(unsigned)index;{
    if (index <[embeddedArray count]) {
        [embeddedArray removeObjectAtIndex:index];
    }
}


@end
