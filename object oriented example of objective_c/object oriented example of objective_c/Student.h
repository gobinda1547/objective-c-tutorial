//
//  Student.h
//  object oriented example of objective_c
//
//  Created by Gobinda Paul on 4/18/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//


//in the header file we does not do anything but
//declare the attributes
//declare the methods
//declare the constructors
//etc
//implementation will be in the Student.m file
//uses will be in different file, as per our need


#import <Foundation/Foundation.h>

@interface Student : NSObject

//those are the properties of a Student Object
//we have to declare them like this example
@property NSString *studentName;
@property NSInteger studentRoll;
@property NSString *studentMobileNumber;

//this two methods are the constructor, though we just declare them here but
//implementation will be in the Student.m file and uses will be later in different file
-(instancetype) initWithOnlyTheName:(NSString *) studentName;
-(instancetype) initWithName:(NSString*)studentName
                 whereRollIs:(NSInteger)studentsRoll
           andMobileNumberIs:(NSString*)studentMobileNumber;

//this is a normal method prototype which will be implemented in the Student.m file
-(void) displayAllInformation;

//those 3 are the setter methods which will also be implemented in the Student.m file
-(void) setStudentName:(NSString *)studentName;
-(void) setStudentRoll:(NSInteger)studentRoll;
-(void) setStudentMobileNumber:(NSString *)studentMobileNumber;




@end
