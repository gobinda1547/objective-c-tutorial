//
//  Person.m
//  category example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = _name;
@synthesize friends = _friends;

-(id)init{
    self = [super init];
    if(self){
        _friends = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)sayHello {
    NSLog(@"Hello, says %@.", _name);
}

- (void)sayGoodbye {
    NSLog(@"Goodbye, says %@.", _name);
}
@end
