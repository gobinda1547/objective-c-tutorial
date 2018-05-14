//
//  Person.h
//  category example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) NSMutableArray* friends;
@property (copy) NSString* name;

- (void)sayHello;
- (void)sayGoodbye;

@end
