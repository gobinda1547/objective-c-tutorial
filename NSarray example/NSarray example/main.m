//
//  main.m
//  NSarray example
//
//  Created by Gobinda Paul on 4/19/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        
        //this is how we can declare an array and also can print them
        //though here we declare an integer array
        NSArray *devices = @[@12,@12,@11,@111];
        NSLog(@"first element only: %@\n",devices[0]);
        NSLog(@"all the elements is %@\n",devices);
        
        //here we just declare a string array
        NSArray *deviceNames = @[@"mobile",@"watch",@"camera",@"sunglass"];
        NSLog(@"first element only: %@\n",deviceNames[0]);
        NSLog(@"all the elements is %@\n",deviceNames);
        
        // we can search for an item using this two line of codes
        BOOL containItem = [deviceNames containsObject:@"mobile"];
        NSLog(@"Does mobile in the list: %d\n",containItem);
        
        //also we can find out the index of a searchable item
        NSLog(@"searchable item index is:%d\n",(int)[deviceNames indexOfObject:@"camera"]);
        
        //this is how we can get the total length of the array
        int total = (int)[devices count];
        NSLog(@"total item in the device array is %d\n",total);
        
        
        //this is how we can declare a mutable array, although we declare a mutable
        //string array but you can use any object , you want.
        NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:10];
        [mutableArray addObject:@"gobinda"];
        [mutableArray addObject:@"oshy"];
        [mutableArray addObject:@"jilani"];
        [mutableArray addObject:@"taher"];
        NSLog(@"all friends name: %@\n",mutableArray);
        
        //this is how we can, add an object into an specific position
        [mutableArray insertObject:@"mahmud" atIndex:1];
        NSLog(@"all friends name: %@\n",mutableArray);
        
        //this is how we can remove an item form the array
        [mutableArray removeObject:@"mahmud"];
        
        //in this way , we can remove an object according to it's index
        [mutableArray removeObjectAtIndex:2];
        
        //and this is how we can , loop through the whole array, and print them
        for(int i=0;i<[mutableArray count];i++){
            NSLog(@"value at position %d is %@.\n",i,mutableArray[i]);
        }
        
        
        
        
    }
    return 0;
}
