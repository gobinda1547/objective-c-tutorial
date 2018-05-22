//
//  ValidatingArray.h
//  Composit Object
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidatingArray : NSObject{
    NSMutableArray *embeddedArray;
}
+ validatingArray;
- init;
- (NSUInteger)count;
- objectAtIndex:(unsigned)index;
- (void)addObject:object;
- (void)replaceObjectAtIndex:(unsigned)index withObject:object;
- (void)removeLastObject;
- (void)insertObject:object atIndex:(unsigned)index;
- (void)removeObjectAtIndex:(unsigned)index;

@end
