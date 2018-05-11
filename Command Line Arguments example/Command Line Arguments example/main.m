//
//  main.m
//  Command Line Arguments example
//
//  Created by Gobinda Paul on 5/11/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>


//just pass 2 or 3 parameter when running this program


/*
 It is possible to pass some values from the command line to your Objective-C programs when they are executed. These values are called command line arguments and many times they are important for your program, especially when you want to control your program from outside instead of hard coding those values inside the code.
 
 The command line arguments are handled using main() function arguments where argc refers to the number of arguments passed, and argv[] is a pointer array, which points to each argument passed to the program. Following is a simple example, which checks if there is any argument supplied from the command line and take action accordingly:
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Program name is [%s]\n", argv[0]);
        if( argc == 2 ){
            NSLog(@"The argument supplied is [%s]\n", argv[1]);
        }
        else if( argc > 2 ){
            NSLog(@"Too many arguments supplied.\n");
        }
        else{
            NSLog(@"One argument expected.\n");
        }
    }
    return 0;
}
