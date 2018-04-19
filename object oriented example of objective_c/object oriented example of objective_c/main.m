//
//  main.m
//  object oriented example of objective_c
//
//  Created by Gobinda Paul on 4/18/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *taher = [[Student alloc] init];
        [taher displayAllInformation];
        NSLog(@"");
        
        Student *mahmud = [[Student alloc] initWithName:@"mahmud" whereRollIs:12 andMobileNumberIs:@"01238838378"];
        [mahmud displayAllInformation];
        NSLog(@"");
        
        Student *zilani = [[Student alloc] initWithOnlyTheName:@"zilani"];
        [zilani displayAllInformation];
        NSLog(@"");
    }
    return 0;
}
