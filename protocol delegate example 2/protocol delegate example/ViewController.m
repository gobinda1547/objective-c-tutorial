//
//  ViewController.m
//  protocol delegate example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    SampleProtocol *sampleProtocol;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) processStarting{
    NSLog(@"inside process starting method!");
    [self.myLabel setText:[NSString stringWithFormat:@"process started!"]];
    [self.myLabel setNeedsDisplay];
}


-(void) processCompleted{
    NSLog(@"inside process completed method!");
    [self.myLabel setText:[NSString stringWithFormat:@"process completed!"]];
    [self.myLabel setNeedsDisplay];
}

- (IBAction)startButtonAction:(id)sender {
    [sampleProtocol startSampleProcess];
}
@end

