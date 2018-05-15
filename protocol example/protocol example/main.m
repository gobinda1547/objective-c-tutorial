//
//  main.m
//  protocol example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Superman.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student* g = [[Student alloc] initWithName:@"Gobinda" withAddress:@"savar" withAge:24];
        [g display];
        
        Superman *s = [[Superman alloc] initWithName:@"tushar" withAddress:@"Dhanmondi" withAge:20];
        [s display];
        
        
        
    }
    return 0;
}
