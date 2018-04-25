//
//  main.m
//  Functions Example
//
//  Created by Gobinda Paul on 4/25/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
-(int) add:(int)value1
                 with:(int)value2;
@end


@implementation SampleClass

//this is an instance method which only works for the instance of this class
-(int) add:(int)value1 with:(int)value2{
    return value1+value2;
}

//this is a class method, which works when you will call this method by using this class name
+(int) getMaximumBetween:(int)value1 and:(int)value2{
    return (value1>value2)?value1:value2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //calling the instance method
        SampleClass* sc = [[SampleClass alloc] init];
        NSLog(@"the sum of %d and %d is %d.\n",3,5,[sc add:3 with:5]);
        
        //calling the class method
        NSLog(@"the maximum value for %d and %d is %d.\n",3,5,[SampleClass getMaximumBetween:3 and:5]);
        
    }
    return 0;
}
