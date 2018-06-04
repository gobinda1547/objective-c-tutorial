//
//  ViewController.m
//  ns_operation_queue_example
//
//  Created by Gobinda Paul on 6/4/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSOperationQueue * queue;
    int operationCounter;
}


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    queue = [NSOperationQueue new];
    operationCounter = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addOperationToTheOperationQueue:(id)sender {
    
    NSString *operationName = [NSString stringWithFormat:@"%d", ++operationCounter];
    NSInvocationOperation* operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(doThisThing:) object:operationName];
    [queue addOperation:operation];
}

-(void) doThisThing:(NSString*)opName{
    
    for(int i=1;i<10;i++){
        NSLog(@"Operation:%@ count: %d",opName,i);
        [NSThread sleepForTimeInterval:2.000];
    }
    
    
}


@end
