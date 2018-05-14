//
//  Student.m
//  encapsulation example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Student.h"

@implementation Student

//constructor implementation
-(instancetype) initWithNumber:(NSInteger)number{
    self = [super init];
    total = number;
    return self;
 }

//instance method implementation
-(void) addNumber:(NSInteger)number{
    total += number;
}
-(NSInteger) getTotalValue{
    return total;
}


@end
