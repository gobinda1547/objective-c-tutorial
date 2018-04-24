//
//  main.m
//  Variable Example
//
//  Created by Gobinda Paul on 4/24/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"The size of a char is: %lu.", sizeof(char));
        NSLog(@"The size of short is: %lu.", sizeof(short));
        NSLog(@"The size of int is: %lu.", sizeof(int));
        NSLog(@"The size of long is: %lu.", sizeof(long));
        NSLog(@"The size of long long is: %lu.", sizeof(long long));
        NSLog(@"The size of a unsigned char is: %lu.", sizeof(unsigned char));
        NSLog(@"The size of unsigned short is: %lu.", sizeof(unsigned short));
        NSLog(@"The size of unsigned int is: %lu.", sizeof(unsigned int));
        NSLog(@"The size of unsigned long is: %lu.", sizeof(unsigned long));
        NSLog(@"The size of unsigned long long is: %lu.", sizeof(unsigned long long));
        NSLog(@"The size of a float is: %lu.", sizeof(float));
        NSLog(@"The size of a double is %lu.", sizeof(double));
        NSLog(@"");
        NSLog(@"");
        
        NSLog(@"Ranges:");
        
        //[char]
        char ch = 'a';
        NSLog(@"the character value is [%c]",ch);
        NSLog(@"CHAR_MIN:   [%c]",   CHAR_MIN);
        NSLog(@"CHAR_MAX:   [%c]",   CHAR_MAX);
        
        //[short]
        short srt = 125;
        NSLog(@"the short value is %hi\n",srt);
        
        //[unsigned short]
        unsigned short usrt= 12323;
        NSLog(@"the unsigned short value is %hu",usrt);
        
        //[int]
        int it = 283749;
        NSLog(@"the integer value is %d\n",it);
        NSLog(@"INT_MIN:    [%i]",   INT_MIN);
        NSLog(@"INT_MAX:    [%i]",   INT_MAX);
        
        
        //[long int]
        long int lit = 2384792347923;
        NSLog(@"the long int value is [%li]",lit);
        NSLog(@"LONG_MIN:   [%li]",  LONG_MIN);
        NSLog(@"LONG_MAX:   [%li]",  LONG_MAX);
        
        //[unsigned long int]
        unsigned long int ulit = 2389429384723423;
        NSLog(@"the unsigned long int value is [%lu]",ulit);
        NSLog(@"ULONG_MAX:  [%lu]",  ULONG_MAX);
        
        //[signed long long int]
        long long int llit = 238492387492384;
        NSLog(@"the signed long long int value is [%lli]",llit);
        NSLog(@"LLONG_MIN:  [%lli]", LLONG_MIN);
        NSLog(@"LLONG_MAX:  [%lli]", LLONG_MAX);
        
        //[unsigned long long int]
        unsigned long long int ullit = 238492387492384;
        NSLog(@"the unsigned long long int value is [%llu]",ullit);
        NSLog(@"ULLONG_MAX: [%llu]", ULLONG_MAX);
        
        /*
        2018-04-24 17:30:20.251749+0600 Variable Example[2893:98008] The size of a char is: 1.
        2018-04-24 17:30:20.252062+0600 Variable Example[2893:98008] The size of short is: 2.
        2018-04-24 17:30:20.252080+0600 Variable Example[2893:98008] The size of int is: 4.
        2018-04-24 17:30:20.252094+0600 Variable Example[2893:98008] The size of long is: 8.
        2018-04-24 17:30:20.252107+0600 Variable Example[2893:98008] The size of long long is: 8.
        2018-04-24 17:30:20.252121+0600 Variable Example[2893:98008] The size of a unsigned char is: 1.
        2018-04-24 17:30:20.252135+0600 Variable Example[2893:98008] The size of unsigned short is: 2.
        2018-04-24 17:30:20.252148+0600 Variable Example[2893:98008] The size of unsigned int is: 4.
        2018-04-24 17:30:20.252161+0600 Variable Example[2893:98008] The size of unsigned long is: 8.
        2018-04-24 17:30:20.252173+0600 Variable Example[2893:98008] The size of unsigned long long is: 8.
        2018-04-24 17:30:20.252208+0600 Variable Example[2893:98008] The size of a float is: 4.
        2018-04-24 17:30:20.252222+0600 Variable Example[2893:98008] The size of a double is 8.
        2018-04-24 17:30:20.252230+0600 Variable Example[2893:98008]
        2018-04-24 17:30:20.252237+0600 Variable Example[2893:98008]
        2018-04-24 17:30:20.252515+0600 Variable Example[2893:98008] Ranges:
        2018-04-24 17:30:20.252531+0600 Variable Example[2893:98008] the character value is [a]
        2018-04-24 17:30:20.252547+0600 Variable Example[2893:98008] CHAR_MIN:   [\200]
        2018-04-24 17:30:20.252560+0600 Variable Example[2893:98008] CHAR_MAX:   []
        2018-04-24 17:30:20.252572+0600 Variable Example[2893:98008] the short value is 125
        2018-04-24 17:30:20.252581+0600 Variable Example[2893:98008] the unsigned short value is 12323
        2018-04-24 17:30:20.252588+0600 Variable Example[2893:98008] the integer value is 283749
        2018-04-24 17:30:20.252596+0600 Variable Example[2893:98008] INT_MIN:    [-2147483648]
        2018-04-24 17:30:20.252603+0600 Variable Example[2893:98008] INT_MAX:    [2147483647]
        2018-04-24 17:30:20.252611+0600 Variable Example[2893:98008] the long int value is [2384792347923]
        2018-04-24 17:30:20.252618+0600 Variable Example[2893:98008] LONG_MIN:   [-9223372036854775808]
        2018-04-24 17:30:20.252626+0600 Variable Example[2893:98008] LONG_MAX:   [9223372036854775807]
        2018-04-24 17:30:20.252975+0600 Variable Example[2893:98008] the unsigned long int value is [2389429384723423]
        2018-04-24 17:30:20.252995+0600 Variable Example[2893:98008] ULONG_MAX:  [18446744073709551615]
        2018-04-24 17:30:20.253018+0600 Variable Example[2893:98008] the signed long long int value is [238492387492384]
        2018-04-24 17:30:20.253030+0600 Variable Example[2893:98008] LLONG_MIN:  [-9223372036854775808]
        2018-04-24 17:30:20.253039+0600 Variable Example[2893:98008] LLONG_MAX:  [9223372036854775807]
        2018-04-24 17:30:20.253046+0600 Variable Example[2893:98008] the unsigned long long int value is [238492387492384]
        2018-04-24 17:30:20.253054+0600 Variable Example[2893:98008] ULLONG_MAX: [18446744073709551615]
         
         
         */
        
    }
    return 0;
}
