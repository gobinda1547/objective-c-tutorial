//
//  main.m
//  extensions example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//


//An extension cannot be declared for any class, only for the classes that we have original implementation of source code.

//An extension is adding private methods and private variables that are only specific to the class.

//Any method or variable declared inside the extensions is not accessible even to the inherited classes.


#import <Foundation/Foundation.h>

@interface SampleClass : NSObject{
    NSString *name;
}

- (void)setInternalID;
- (NSString *)getExternalID;

@end


@interface SampleClass(){
    NSString *internalID;
}

@end

@implementation SampleClass

- (void)setInternalID{
    internalID = [NSString stringWithFormat:
                  @"KEY%d",arc4random()%100];
}

- (NSString *)getExternalID{
    return [internalID stringByReplacingOccurrencesOfString:
            @"KEY" withString:@""];
}

@end

int main(int argc, const char * argv[])
{
    @autoreleasepool{
        SampleClass *sampleClass = [[SampleClass alloc]init];
        [sampleClass setInternalID];
        NSLog(@"ExternalID: %@",[sampleClass getExternalID]);
    }
    return 0;
}
