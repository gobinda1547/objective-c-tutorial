//
//  main.m
//  Operator Example
//
//  Created by Gobinda Paul on 4/24/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //arithmatic operator
        int a=5,b=9;
        NSLog(@"%d + %d=%d\n",a,b,a+b);
        NSLog(@"%d - %d=%d\n",a,b,a-b);
        NSLog(@"%d * %d=%d\n",a,b,a*b);
        NSLog(@"%d / %d=%d\n",a,b,a/b);
        NSLog(@"%d %% %d=%d\n",a,b,a%b);
        
        
        //relational operator
        //relational operator always returns true or false, if we want to print
        //the boolean data, it will print 1 if "true" or it will print 0 when "false"
        NSLog(@"print the use of == operator where value = [%d]",a==b);
        NSLog(@"print the use of != operator where value = [%d]",a!=b);
        NSLog(@"print the use of > operator where value = [%d]",a>b);
        NSLog(@"print the use of >= operator where value = [%d]",a>=b);
        NSLog(@"print the use of < operator where value = [%d]",a<b);
        NSLog(@"print the use of <= operator where value = [%d]",a<=b);
        
        
        
        //logical operator
        //basically those operators are use in the middle of multiple relational operator
        int year = 2012;
        if(year%400 == 0 || (year%100 !=0 && year%4 ==0)){
            NSLog(@"the year %d is leap year.",year);
        }else {
            NSLog(@"the year %d in not leap year.",year);
        }
        
        
        
        
        
        //bitwise operator
        int b1 = 6, b2 = 9;
        
        //binary AND operation between all the bits
        NSLog(@"the bitwise AND operation result for %d and %d is %d",b1,b2,b1&b2);
        
        //binary OR operation between all the bits
        NSLog(@"the bitwise OR operation result for %d and %d is %d",b1,b2,b1|b2);
        
        //binary XOR operation between all the bits
        NSLog(@"the bitwise XOR operation result for %d and %d is %d",b1,b2,b1^b2);
        
        //binary 2's Compliment operation of all the bits
        NSLog(@"the ones compliment of %d is %d",b1,~b1);
        
        //binary left shift operation of all the bits
        //it is like multiple with 2
        NSLog(@"the left shift of %d with 1 is %d",b1,b1<<1);
        
        //binary right shift operation of all the bits
        //it is like division by 2
        NSLog(@"the right shift of %d with 1 is %d",b1,b1>>1);
        
        
        
        //assignment operator
        int assValue = 33,extra=5;
        
        NSLog(@"use of += then assValue = [%d]",assValue += extra);
        NSLog(@"use of -= then assValue = [%d]",assValue -= extra);
        NSLog(@"use of *= then assValue = [%d]",assValue *= extra);
        NSLog(@"use of /= then assValue = [%d]",assValue /= extra);
        NSLog(@"use of %%= then assValue = [%d]",assValue %= extra);
        NSLog(@"use of <<= then assValue = [%d]",assValue <<= extra);
        NSLog(@"use of >>= then assValue = [%d]",assValue >>= extra);
        NSLog(@"use of &= then assValue = [%d]",assValue &= extra);
        
        
        
        
        //misc operator example
        int v1 = 34, v2 = 67;
        
        int mx = (v1>v2) ? v1 : v2;
        NSLog(@"the maximum value between %d and %d is %d",v1,v2,mx);
        
        int mn = (v1>v2)? v2:v1;
        NSLog(@"the minimum value between %d and %d is %d",v1,v2,mn);
        
        int ab1 = -56;
        int absValue = (ab1<0)? -ab1:ab1;
        NSLog(@"the absolute value of %d is %d\n",ab1,absValue);
        
        
        
        
        
    }
    return 0;
}
