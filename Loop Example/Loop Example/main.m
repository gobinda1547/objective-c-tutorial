//
//  main.m
//  Loop Example
//
//  Created by Gobinda Paul on 4/25/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSMutableArray *mutableArray = [[NSMutableArray alloc]initWithCapacity:10];
        
        //for loop example
        for(int i=0;i<10;i++){
            [mutableArray addObject:[NSString stringWithFormat:@"%s","gobinda"]];
        }
        
        
        //for in loop example
        for(NSString *name in mutableArray){
            NSLog(@"the name is %@\n",name);
        }
        
        
        //while loop example
        int position = 0;
        while(position < [mutableArray count]){
            NSLog(@"%d in the while loop the name is %@",position, mutableArray[position++]);
        }
        
        
        //do while loop example
        position = 0;
        do{
            NSLog(@"%d in the do while loop the name is %@",position,mutableArray[position++]);
        }while(position<[mutableArray count]);
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
