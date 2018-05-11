//
//  main.m
//  structure example
//
//  Created by Gobinda Paul on 5/11/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Point_2D{
    int x;
    int y;
};

@interface SampleClass:NSObject
//class method declaration
+(void) displayPoint:(struct Point_2D) point;
@end

@implementation SampleClass

//class method implementation
+(void) displayPoint:(struct Point_2D)point{
    NSLog(@"Point[x=%d,y=%d]",point.x,point.y);
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        struct Point_2D p1;
        struct Point_2D p2;
        
        p1.x = 3;
        p1.y = 5;
        
        p2.x = 100;
        p2.y = 238;
        
        //here we used static method so we don't have to open any object of that sampleclass
        [SampleClass displayPoint:p1];
        [SampleClass displayPoint:p2];
    }
    return 0;
}
