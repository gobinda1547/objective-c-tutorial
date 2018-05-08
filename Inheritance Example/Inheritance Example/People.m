//
//  People.m
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "People.h"

@implementation People


-(id) init
{
    self = [super init];
    if(self){
        self.age = -1;
        self.name = @"UNKNOWN";
        self.mobile = @"UNKNOWN";
    }
    return self;
}


-(id) initWhereNameIs:(NSString *)name whereAgeIs:(NSInteger)age whereMobileIs:(NSString *)mobile{
    self = [super init];
    if(self){
        self.name = name;
        self.age = age;
        self.mobile = mobile;
    }
    return self;
}

-(void) display{
    NSLog(@"name = %@, age = %zd, mobile=%@\n",self.name, self.age, self.mobile);
}

@end

