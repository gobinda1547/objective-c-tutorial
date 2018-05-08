//
//  Employee.m
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Employee.h"

@implementation Employee


-(instancetype) init{
    self = [super init];
    self.salary = -1;
    return self;
}


-(instancetype) initWhereNameIs:(NSString *)name whereAgeIs:(NSInteger)age whereMobileIs:(NSString *)mobile whereSalaryIs:(NSInteger)salary{
    self = [super initWhereNameIs:name whereAgeIs:age whereMobileIs:mobile];
    self.salary = salary;
    return self;
}


-(void) display{
    NSLog(@"name = %@, age = %zd, mobile=%@ salary=%zd\n",self.name, self.age, self.mobile,self.salary);
}


-(void) displayAnnualSalary{
    NSLog(@"annual salary of %@ is :%zd",self.name, self.salary*12);
}



@end
