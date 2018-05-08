//
//  Student.h
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "People.h"

@interface Student : People


//attributes
@property (nonatomic, assign) NSInteger roll;


//constructors
-(instancetype) init;
-(instancetype) initWhereNameIs:(NSString *)name whereAgeIs:(NSInteger)age whereMobileIs:(NSString *)mobile whereStudentRollIs:(NSInteger) roll;


//methods
-(void) whichMobileUser;
-(void) display; // this is override method



@end
