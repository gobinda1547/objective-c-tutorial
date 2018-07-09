//
//  ViewController.m
//  slider check
//
//  Created by Gobinda Paul on 6/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[_slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];

    [_slider setMaximumValue:100.0];
    [_slider setMinimumValue:0.0];
}

- (IBAction)buttonPressed:(id)sender {
    [_slider setValue:60.0];
}

- (IBAction)sliderChanged:(id)sender {
    //NSLog(@"manually: %@", [_slider isFocused]? @"YES":@"NO");
    [_label setText:[NSString stringWithFormat:@"%d",(int) _slider.value]];
}

@end
