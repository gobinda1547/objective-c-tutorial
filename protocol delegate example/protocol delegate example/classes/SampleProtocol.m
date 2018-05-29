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
    
    NSLog(@"waiting for 5 second!");
    [NSThread sleepForTimeInterval:5.000];
    NSLog(@"5 second waiting end!");
    
    [_delegate processCompleted];
    
}

-(void) setDelegate:(id<SampleProtocolDelegate>) delegateValue{
    _delegate = delegateValue;
}

@end
