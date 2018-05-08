//
//  main.m
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "Student.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray* peopleArray = [NSMutableArray arrayWithCapacity:10];
        
        //adding people object
        People* p1 = [[People alloc] init];
        [peopleArray addObject:p1];
        
        People* p2 = [[People alloc] initWhereNameIs:@"gobinda" whereAgeIs:22 whereMobileIs:@"01923055489"];
        [peopleArray addObject:p2];
        
        
        //adding student object
        People* s1 = [[Student alloc] init];
        [peopleArray addObject:s1];
        
        People* s2 = [[Student alloc] initWhereNameIs:@"joy" whereAgeIs:22 whereMobileIs:@"01749186484" whereStudentRollIs:47];
        [peopleArray addObject:s2];
        
        
        //adding employee object
        People* e1 = [[Employee alloc] init];
        [peopleArray addObject:e1];
        
        People* e2 = [[Employee alloc] initWhereNameIs:@"gobinda" whereAgeIs:22 whereMobileIs:@"01923055489" whereSalaryIs:40000];
        [peopleArray addObject:e2];
        
        
        //printing all the peoples
        for (People* p in peopleArray) {
            [p display];
        }
        
        
        
    }
    return 0;
}
