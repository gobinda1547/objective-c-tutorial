//
//  main.m
//  encapsulation example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *s = [[Student alloc] initWithNumber:5];
        [s addNumber:100];
        [s addNumber:300];
        NSLog(@"the total value is %zd",[s getTotalValue]);
        s.value = 6;
        NSLog(@"this is a public variable %zd",[s value]);
    }
    return 0;
}
