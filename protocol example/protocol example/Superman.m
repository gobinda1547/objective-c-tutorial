//
//  Superman.m
//  protocol example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Superman.h"

@implementation Superman

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
    NSLog(@"%@ can not drink",name);
}

- (void)eat {
    NSLog(@"%@can not eat",name);
}
- (void)fly {
    NSLog(@"%@can  fly",name);
}

-(void) display{
    NSLog(@"%@ %@ %zd",name, address, age);
    [self eat];
    [self drink];
    [self fly];
}

@end
