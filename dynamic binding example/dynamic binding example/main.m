//
//  main.m
//  dynamic binding example
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //initializing object
        Square *square = [[Square alloc]init];
        [square calculateAreaOfSide:10.0];
        
        //initializing object
        Rectangle *rectangle = [[Rectangle alloc]init];
        [rectangle calculateAreaWithLength:10.0 andWidth:5.0];
        
        //initializing different object array into an array
        NSArray *shapes = [[NSArray alloc]initWithObjects: square, rectangle,nil];
        
        
        for(int i=0;i<[shapes count];i++){
            id object = [shapes objectAtIndex:i];//retrieving the object
            [object printArea];//printing the value
        }
        
        return 0;
        
        
        
    }
    return 0;
}
