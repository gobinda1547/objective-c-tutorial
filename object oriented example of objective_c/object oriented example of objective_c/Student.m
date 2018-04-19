//
//  Student.m
//  object oriented example of objective_c
//
//  Created by Gobinda Paul on 4/18/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Student.h"

@implementation Student

//this is a default constructor for student object
- (id)init
{
    self = [super init];
    if (self) {
        self.studentName = @"No Name";
    }
    return self;
}

//this is a constructor where the student object can be initialized
//only using the StudentName attribute
-(instancetype) initWithOnlyTheName:(NSString *)studentName{
    self = [super init];
    if(self){
        self.studentName = studentName;
    }
    return self;
}


-(instancetype) initWithName:(NSString *)studentName
                 whereRollIs:(NSInteger)studentsRoll
           andMobileNumberIs:(NSString *)studentMobileNumber{
    self = [super init];
    if(self){
        self.studentName = studentName;
        self.studentRoll = studentsRoll;
        self.studentMobileNumber = studentMobileNumber;
    }
    return self;
}


-(void) displayAllInformation{
    NSLog(@"name=%@\n",self.studentName);
    NSLog(@"roll=%zd\n",self.studentRoll);
    NSLog(@"mobile=%@\n",self.studentMobileNumber);
}







@end
