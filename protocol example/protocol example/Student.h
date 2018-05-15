//
//  Student.h
//  protocol example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Being.h"

@interface Student : NSObject <Being>{
    NSString* name;
    NSString* address;
    NSInteger age;
}

-(instancetype) initWithName:(NSString*)name
                 withAddress:(NSString*)address
                     withAge:(NSInteger)age;


-(NSString*) getName;
-(NSString*) getAddress;
-(NSInteger) getAge;

-(void) display;


@end
