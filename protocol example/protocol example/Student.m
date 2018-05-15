//
//  Student.m
//  protocol example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Student.h"


@interface Student(){
    NSString* name2;
    NSString* address23;
    NSInteger age32;
}

@end

@implementation Student

-(instancetype) initWithName:(NSString*)name
                 withAddress:(NSString*)address
                     withAge:(NSInteger)age{
    self = [super init];
    self->name = name;
    self->address = address;
    self->age = age;
    return self;
}

-(NSString*) getName{
    return name;
}

-(NSString*) getAddress{
    return address;
}

-(NSInteger) getAge{
    return age;
}

- (void)drink {
    NSLog(@"%@ drink water",name);
}

- (void)eat {
    NSLog(@"%@ eat rice",name);
}


-(void) display{
    NSLog(@"%@ %@ %zd",name, address, age);
    [self eat];
    [self drink];
}


@end

