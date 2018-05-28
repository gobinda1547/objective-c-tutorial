//
//  main.m
//  memory management example
//
//  Created by Gobinda Paul on 5/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

//probabely you can not run this program
//to run this program first you have to make your project ARC -> NO
//in ARC mode you can not use manual reference counting...
//but if you want to deliver a product for iOS 4.0 and above you can definitely use ARC.

//how to make ARC -> NO
//project -> Build Settings -> Objective-C Automatic Reference Counting -> make it (NO/YES)


#import <Foundation/Foundation.h>
#import "SampleClass.h"

int main(int argc, const char * argv[]) {
        /* my first program in Objective-C */
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass sampleMethod];
    NSLog(@"Retain Count after initial allocation: %lu", (unsigned long)[sampleClass retainCount]);
    [sampleClass retain];
    NSLog(@"Retain Count after retain: %lu", (unsigned long)[sampleClass retainCount]);
    [sampleClass release];
    NSLog(@"Retain Count after release: %lu", (unsigned long)[sampleClass retainCount]);
    [sampleClass release];
    NSLog(@"SampleClass dealloc will be called before this");
    // Should set the object to nil
    sampleClass = nil;
    
    return 0;
}
