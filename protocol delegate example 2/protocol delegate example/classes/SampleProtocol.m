//
//  SampleProtocol.m
//  protocol delegate example
//
//  Created by Gobinda Paul on 5/29/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void) startSampleProcess{
    
    [_delegate processStarting];
    
    double delayInSeconds = 0.01 * 10;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        NSLog(@"waiting for 5 second!");
        [NSThread sleepForTimeInterval:5.000];
        NSLog(@"5 second waiting end!");
        
        [self.delegate processCompleted];
    });
    
    
    
    
    
}

-(void) likeABoss {
    NSLog(@"inside like a boss method!");
}



-(void) setDelegate:(id<SampleProtocolDelegate>) delegateValue{
    _delegate = delegateValue;
}

@end
