//
//  main.m
//  check
//
//  Created by Gobinda Paul on 5/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass:NSObject

-(Boolean) isInterval:(NSString*)givenTime
   whereStartTime:(NSString*) startTime
     whereEndTime:(NSString*) endTime;

@end


@implementation SampleClass

-(Boolean) isInterval:(NSString*)givenTime
   whereStartTime:(NSString*) startTime
     whereEndTime:(NSString*) endTime {
    
    NSArray *listItems;
    listItems = [startTime componentsSeparatedByString:@":"];
    int st_hour = [listItems[0] intValue];
    int st_minute = [listItems[1] intValue];
    
    listItems = [givenTime componentsSeparatedByString:@":"];
    int gv_hour = [listItems[0] intValue];
    int gv_minute = [listItems[1] intValue];
    
    listItems = [endTime componentsSeparatedByString:@":"];
    int en_hour = [listItems[0] intValue];
    int en_minute = [listItems[1] intValue];
    
    
    int startTimeHash = st_hour*60 + st_minute;
    int endTimeHash = en_hour*60 + en_minute;
    int givenTimeHash = gv_hour*60 + gv_minute;
    
    endTimeHash += (startTimeHash > endTimeHash) ? 1440:0;
    givenTimeHash += (startTimeHash > givenTimeHash) ? 1440:0;
    
    return (startTimeHash<=givenTimeHash && givenTimeHash<=endTimeHash);
    
};


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SampleClass* sc = [[SampleClass alloc] init];
        NSLog(@"%d",[sc isInterval:@"7:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"1:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"2:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"3:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"4:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        
        NSLog(@"%d",[sc isInterval:@"21:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"23:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"00:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        
        
        NSLog(@"%d",[sc isInterval:@"8:00" whereStartTime:@"8:00" whereEndTime:@"9:00"]);
        NSLog(@"%d",[sc isInterval:@"3:00" whereStartTime:@"8:00" whereEndTime:@"9:00"]);
        NSLog(@"%d",[sc isInterval:@"8:18" whereStartTime:@"8:17" whereEndTime:@"8:19"]);
        
        
        NSLog(@"%d",[sc isInterval:@"9:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"13:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        NSLog(@"%d",[sc isInterval:@"2:01" whereStartTime:@"23:00" whereEndTime:@"2:00"]);
        
        NSLog(@"%d",[sc isInterval:@"20:00" whereStartTime:@"22:00" whereEndTime:@"8:00"]);
        
        
        
    }
    return 0;
}
