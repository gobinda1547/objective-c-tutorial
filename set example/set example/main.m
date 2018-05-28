//
//  main.m
//  set example
//
//  Created by Gobinda Paul on 5/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //normally a set is defined by this line
        NSSet *set = [NSSet set]; //empty set
        NSLog(@"%@",set);
        
        
        //declaring set with array
        NSSet *set2 = [NSSet setWithArray:@[@"Eezy",@"Tutorials"]];
        NSLog(@"%@",set2);
        
        //this will initialize a set with only one object
        NSSet *set3 = [NSSet setWithObject:@"Eezy"];
        NSLog(@"%@",set3);
        
        
        //this will initialize a set with multiple object
        NSSet *set4 = [NSSet setWithObjects:@"Eezy",@"gobinda",@"hello",nil];
        NSLog(@"%@",set4);
        
        
        //initialize set with object count
        NSString *values[3];
        values[0] = @"Eezy";
        values[1] = @"Tutorials";
        values[2] = @"Website";
        NSSet *set5 = [NSSet setWithObjects:values count:3];
        NSLog(@"%@",set5);
        
        
        //initializing a set and then adding item to it
        NSSet *set6 = [NSSet setWithObject:@"Eezy"];
        set6 = [set6 setByAddingObject:@"Tutorials"];
        set6 = [set6 setByAddingObject:@"gobinda"];
        NSLog(@"%@",set6);
        
        
        //array to set conversion
        NSArray *array = [NSArray arrayWithObjects:@"a",@"b",@"c",@"d", nil];
        NSSet *set7 = [NSSet set];
        set7 = [set7 setByAddingObjectsFromArray:array];
        NSLog(@"%@",set7);
        
        
        //this is also the way of array to set conversion
        NSSet *set8 = [[NSSet alloc ]initWithArray:array];
        NSLog(@"%@",set8);
        
        
        
        //set enumerator
        //this will use to work with all the data in a set
        NSSet *set11 = [[NSSet alloc] initWithArray:array];
        NSEnumerator *enumerator = [set11 objectEnumerator];
        id obj;
        while (obj =[enumerator nextObject]) {
            NSLog(@"%@",obj);
        }
        
        
        
        
        //nsmutable set example
        NSMutableSet *set12 = [NSMutableSet set];
        [set12 addObject:@"Eezy"];
        [set12 addObject:@"hello"];
        NSLog(@"%@",set12);
        
        
        
        //filtering from a set and get result with another set
        NSMutableSet *set22 = [NSMutableSet setWithObjects:@"Eezy",@"Tutorials",@"ee",@"Edlkf",@"NO", nil];
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] 'E'"];
        NSSet *resultSet22 = [set22 filteredSetUsingPredicate:predicate];
        NSLog(@"%@",resultSet22);
        
        
        
        //removing object from mutable set
        NSMutableSet *set33 = [NSMutableSet setWithArray:array];
        [set33 removeObject:@"b"];
        NSLog(@"%@",set33);
        
        
        
        //set union
        NSMutableSet *set61 = [NSMutableSet setWithObjects:@"Eezy",@"Tutorials", nil];
        NSMutableSet *set62 = [NSMutableSet setWithObjects:@"Website",@"Tutorials", nil];
        [set61 unionSet:set62];
        NSLog(@"%@",set61);
        
        
        
        //minus set f(A-B)
        NSMutableSet *set71 = [NSMutableSet setWithObjects:@"Eezy",@"Tutorials", nil];
        NSMutableSet *set72 = [NSMutableSet setWithObjects:@"Website",@"Tutorials", nil];
        [set71 minusSet:set72];
        NSLog(@"%@",set71);
        
        
        
        //intersect set
        NSMutableSet *set81 = [NSMutableSet setWithObjects:@"Eezy",@"Tutorials", nil];
        NSMutableSet *set82 = [NSMutableSet setWithObjects:@"Website",@"Tutorials", nil];
        [set81 intersectSet:set82];
        NSLog(@"%@",set81);
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
