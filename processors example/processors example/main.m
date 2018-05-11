//
//  main.m
//  processors example
//
//  Created by Gobinda Paul on 5/11/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>


//Substitutes a preprocessor macro
//we normally know about #define
#define MAX_ARRAY_LENGTH 20
#define MESSAGE "GOBINDA"


//#include normally Inserts a particular header from another file
//like in c programming we have used #include<stdio.h>


//#undef
//Normally we use #define to define somthing on the other hand we use\
/#Undefines to undefine a preprocessor macro




//defining a function
#define MAX(x,y) ((x > y) ? x : y)


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //Predefined Macros

        //This contains the current filename as a string literal and full path also.
        NSLog(@"File :%s\n", __FILE__ );
        
        //this represent the current date as a character literal in "MMM DD YYYY" format
        NSLog(@"Date :%s\n", __DATE__ );
        
        //The current time as a character literal in "HH:MM:SS" format
        NSLog(@"Time :%s\n", __TIME__ );
        
        //This contains the current line number as a decimal constant.
        NSLog(@"Line :%d\n", __LINE__ );
        
        //Defined as 1 when the compiler complies with the ANSI standard.
        NSLog(@"ANSI :%d\n", __STDC__ );
        
        
        
        
        //#ifdef
        //Returns true if this macro is defined
#ifdef MESSAGE
        NSLog(@"Macro is defined!");
#endif
       
        
        //#ifndef
        //Returns true if this macro is not defined
#ifndef MESSAGE
        NSLog(@"Macro is not defined!");
#endif
        
        
        
        //#if
        //#else
#if defined (MESSAGE)
    #undef MESSAGE
    #define MESSAGE "You wish!"
#else
    #undef MESSAGE
    #define MESSAGE "HAY"
#endif
        
        NSLog(@"the value of message macro is : %s",MESSAGE);
        
        
        //callling a function that is defined
        int a = 4, b=8;
        NSLog(@"the max between %d and %d is %d",a,b,MAX(a, b));
        
        
    }
    return 0;
}
