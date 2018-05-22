//
//  main.m
//  Composit Object
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ValidatingArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ValidatingArray *validatingArray = [ValidatingArray validatingArray];
        [validatingArray addObject:@"Object1"];
        [validatingArray addObject:@"Object2"];
        [validatingArray addObject:[NSNull null]];
        [validatingArray removeObjectAtIndex:0];
        
        for(int i=0;i<[validatingArray count];i++){
            NSLog(@"The %dth value is %@",i,[validatingArray objectAtIndex:i]);
        }
        
    }
    return 0;
}
