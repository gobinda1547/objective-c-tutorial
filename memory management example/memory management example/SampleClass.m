//
//  SampleClass.m
//  memory management example
//
//  Created by Gobinda Paul on 5/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "SampleClass.h"

@implementation SampleClass

- (void)sampleMethod{
    NSLog(@"Hello, World! \n");
}

- (void)dealloc{
    NSLog(@"Object deallocated");
    [super dealloc];
}


@end
