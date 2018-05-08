//
//  Employee.h
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "People.h"

@interface Employee : People


@property (nonatomic, assign) NSInteger salary;


-(instancetype) init;
-(instancetype) initWhereNameIs:(NSString *)name whereAgeIs:(NSInteger)age whereMobileIs:(NSString *)mobile whereSalaryIs:(NSInteger)salary;


-(void) display;
-(void) displayAnnualSalary;


@end
