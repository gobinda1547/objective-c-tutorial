//
//  Student.h
//  encapsulation example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    //this is a private variable
    NSInteger total;
}

//this is a public variable
@property NSInteger value;

//constructor
-(id) initWithNumber:(NSInteger)number;

//instance method
-(void) addNumber:(NSInteger)number;
-(NSInteger) getTotalValue;


@end
