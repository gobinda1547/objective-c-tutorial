//
//  main.m
//  log handling example
//
//  Created by Gobinda Paul on 5/11/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>


//how to disable logs in Live apps
//just write those line of code and use DebugLog instead of NSLog
#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //this will print a line in the console
        NSLog(@"Hello, World! \n");
        
        
        
        //use this DebugLog to print in the debug mode but not in the live mode
        DebugLog(@"Debug log, our custom addition getsprinted during debug only" );
        NSLog(@"NSLog gets printed always" );
        
        
        
        
    }
    return 0;
}
