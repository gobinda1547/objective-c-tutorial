//
//  main.m
//  check2
//
//  Created by Gobinda Paul on 5/30/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        long longVariable = 22;
        double floatVariable = 22.000000000000001;
        NSLog(@"%d",floatVariable > longVariable);
        
    }
    return 0;
}
