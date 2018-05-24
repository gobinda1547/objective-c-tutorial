//
//  AddViewController.m
//  broadcast notification using observer
//
//  Created by Gobinda Paul on 5/23/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(dismissAddViewController)
                                                 name:@"callDismissAddViewController"
                                               object:nil];
    NSLog(@"notification registered in the name : callDismissAddViewController");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"did receive memory warning mehtod called!");
    // Dispose of any resources that can be recreated.
}

-(void) dismissAddViewController{
    NSLog(@"dismiss add view controller method called! and view successfully dismissed!");
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //removing observer
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"callDismissAddViewController" object:nil];
}


- (IBAction)dimissView:(UIButton *)sender {
    
    //button click diye amader ke view ta dismiss korte hobe, ar ei kaj ta amra notification er maddome korlam
    [[NSNotificationCenter defaultCenter] postNotificationName:@"callDismissAddViewController" object:nil];
}


@end
