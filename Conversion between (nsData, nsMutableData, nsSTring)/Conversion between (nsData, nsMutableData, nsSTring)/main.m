//
//  main.m
//  Conversion between (nsData, nsMutableData, nsSTring)
//
//  Created by Gobinda Paul on 9/7/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        //converting nsString to nsData
        NSString *str1 = @"gobinda1";
        NSData *data1 = [str1 dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:true];
        
        //converting nsString to nsData
        NSString *str2 = @"gobinda2";
        NSData *data2 = [str2 dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:true];
        
        //converting nsString to nsData
        NSString *str3 = @"gobinda3";
        NSData *data3 = [str3 dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:true];
        
        
        //converting one or multiple nsData to nsMutableData
        NSMutableData *mutableData = [data1 mutableCopy];
        [mutableData appendData:data2];
        [mutableData appendData:data3];
        
        //converting nsMutableData to nsString
        NSString *stringFromMutableData  = [[NSString alloc] initWithData:mutableData encoding:NSASCIIStringEncoding];
        NSLog(@"the stringFromNsMutableData is: %@",stringFromMutableData);
        
        //converting nsMutableData to nsData
        NSData *nsData = [NSData dataWithData:mutableData];
        
        //converting nsData to string
        NSString *stringFromNsData  = [[NSString alloc] initWithData:nsData encoding:NSASCIIStringEncoding];
        NSLog(@"the stringFromNsData is: %@",stringFromNsData);
        
        
        
        
        
        
    }
    return 0;
}


