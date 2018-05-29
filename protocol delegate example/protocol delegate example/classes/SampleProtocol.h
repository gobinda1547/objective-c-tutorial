//
//  SampleProtocol.h
//  protocol delegate example
//
//  Created by Gobinda Paul on 5/29/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SampleProtocolDelegate <NSObject>

@required
-(void) processStarting;
-(void) processCompleted;

@end;

@interface SampleProtocol : NSObject

@property (nonatomic, strong)  id<SampleProtocolDelegate> delegate;

-(void) startSampleProcess;
-(void) setDelegate:(id<SampleProtocolDelegate>) delegateValue;


@end
