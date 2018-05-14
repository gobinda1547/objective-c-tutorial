//
//  main.m
//  category example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//


// A category can be declared for any class, even if you don't have the original implementation source code.

// Any methods that you declare in a category will be available to all instances of the original class, as well as any subclasses of the original class.

// At runtime, there's no difference between a method added by a category and one that is implemented by the original class.



#import <Foundation/Foundation.h>

#import "Person.h"

//this will added a function with NSString class
//then all the NSString object will have this method/property
//though we dont have the actual code of NSString class but we can add method to it.
@interface NSString(MyAdditions)
+(NSString *)getCopyRightString;
@end

@implementation NSString(MyAdditions)
+(NSString *)getCopyRightString{
    return @"Copyright gobinda paul 2018";
}
@end



//here is an another example with real object,
//suppose we have a person class and some method in it
//but now we need some more method of that class
//so we now add those class so that every object of person class can use them.
@interface Person (Relations)
- (void)addFriend:(Person *)aFriend;
- (void)removeFriend:(Person *)aFriend;
- (void)sayHelloToFriends;
@end
@implementation Person (Relations)
- (void)addFriend:(Person *)aFriend {
    [[self friends] addObject:aFriend];
}
- (void)removeFriend:(Person *)aFriend {
    [[self friends] removeObject:aFriend];
}
- (void)sayHelloToFriends {
    for (Person *friend in [self friends]) {
        NSLog(@"Hello there, %@!", [friend name]);
    }
}
@end


int main(int argc, const char * argv[])
{
    @autoreleasepool{
        NSString *copyrightString = [NSString getCopyRightString];
        NSLog(@"Accessing Category: %@",copyrightString);
    }
    
    @autoreleasepool{
        //here we will be able to use the method of person class that is defined also
        //here we will be able to use the method of person class that we implement here
        Person *person  = [[Person alloc]init];
        [person sayHello];
        [person sayHelloToFriends];
        [person addFriend:[[Person alloc] init]];
        [person sayHelloToFriends];
    }
    return 0;
}
