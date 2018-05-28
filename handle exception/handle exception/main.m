//
//  main.m
//  handle exception
//
//  Created by Gobinda Paul on 5/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        @try
        {
            NSMutableArray *array = [[NSMutableArray alloc]init];
            NSString *string = [array objectAtIndex:10];
        }
        @catch (NSException *exception)
        {
            NSLog(@"exception name = %@ ",exception.name);
            NSLog(@"exception reason = %@ ",exception.reason);
        }
        @finally
        {
            NSLog(@"@@finaly Always Executes");
        }
        
        
        
        
        
    }
    return 0;
}
