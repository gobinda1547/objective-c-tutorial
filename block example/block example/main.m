//
//  main.m
//  block example
//
//  Created by Gobinda Paul on 4/30/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^SendFileNotification)(void);

@interface FileSender:NSObject
-(void) sendFile:(SendFileNotification)notification;
@end

@implementation FileSender
-(void) sendFile:(SendFileNotification)notification{
    NSLog(@"sending file number 1");
    NSLog(@"sending file number 1");
    NSLog(@"sending file number 1");
    notification();
}
@end




int main(int argc, const char * argv[]) {
    
    //block takes arguments and return values
    //this block is just like a function
    double (^multiplyTwoValues)(double, double) =
    ^(double firstValue, double secondValue) {
        return firstValue * secondValue;
    };
    double result = multiplyTwoValues(2,4);
    NSLog(@"The result is %f", result);
    
    
    //block as type definitions
    FileSender *sender = [[FileSender alloc]init];
    [sender sendFile:^{
        NSLog(@"sending file complete!");
    }];
    
    return 0;
}
