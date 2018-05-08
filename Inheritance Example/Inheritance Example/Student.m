//
//  Student.m
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype) init{
    self = [super init];
    self.roll = -1;
    return self;
}

-(instancetype) initWhereNameIs:(NSString *)name whereAgeIs:(NSInteger)age whereMobileIs:(NSString *)mobile whereStudentRollIs:(NSInteger)roll{
    self = [super initWhereNameIs:name whereAgeIs:age whereMobileIs:mobile];
    self.roll = roll;
    return self;
}


-(void) display{
    NSLog(@"name = %@, age = %zd, mobile=%@ roll=%zd\n",self.name, self.age, self.mobile,self.roll);
}

-(void) whichMobileUser{
    NSString* answer = @"GRAMEEN";
    if([self.mobile characterAtIndex:2]=='9'){
        answer = @"BANGLALINK";
    }else if([self.mobile characterAtIndex:2]=='8'){
        answer = @"ROBI";
    }    if([self.mobile characterAtIndex:2]=='6'){
        answer = @"WARID";
    }
    NSLog(@"%@ uses %@ mobile operator",self.name, answer);
}


@end

