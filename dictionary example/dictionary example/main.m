//
//  main.m
//  dictionary example
//
//  Created by Gobinda Paul on 5/23/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //basic format
        //NSDictionary *dict = @{ key : value, key2 : value2};
        
        //NSDictionary example -1
        //where key = string and value = string
        NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                    @"string1",@"key1", @"string2",@"key2",
                                    @"string3",@"key3",@"string4",@"key4",nil];
        NSString *output = [dictionary objectForKey:@"key1"];
        NSLog(@"The object for key, key1 in dictionary is %@",output);

        
        
        //NSDictionary example -2
        //where key = integer and value = string
        NSDictionary *dictionary2 = @{@47:@"gobinda",@39:@"zilani",@26:@"abid",@28:@"pronab"};
        output = [dictionary2 objectForKey:@39];
        NSLog(@"the object for key, 39 in dictionary is %@",output);

        
        
        //NSMutableDictinary example -1
        //where key = string and value = string
        NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc]init];
        [mutableDictionary setValue:@"string101" forKey:@"key1"];
        [mutableDictionary setValue:@"string102" forKey:@"key2"];
        [mutableDictionary setValue:@"string103" forKey:@"key3"];
        [mutableDictionary setValue:@"string104" forKey:@"key4"];
        output = [mutableDictionary objectForKey:@"key1"];
        NSLog(@"The object for key, key1 in mutableDictionary is %@",output);
        
        
        //NSMutableDictinary example -1
        //where key = string and value = integer
        NSMutableDictionary *mutableDictionary2 = [[NSMutableDictionary alloc]init];
        [mutableDictionary2 setValue:@47 forKey:@"key1"];
        [mutableDictionary2 setValue:@39 forKey:@"key2"];
        [mutableDictionary2 setValue:@45 forKey:@"key3"];
        [mutableDictionary2 setValue:@46 forKey:@"key4"];
        output = [mutableDictionary2 objectForKey:@"key1"];
        NSLog(@"The object for key, key1 in mutableDictionary is %@",output);
        
        
        //see all the value stored in the dictionary
        NSLog(@"dictionary = %@",dictionary);
        NSLog(@"dictionary2 = %@",dictionary2);
        NSLog(@"mutable dictionary = %@",mutableDictionary);
        NSLog(@"mutable dictionary2 = %@",mutableDictionary2);
        
        
        
    }
    return 0;
}



