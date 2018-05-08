//
//  ViewController.m
//  GoodBad
//
//  Created by Gobinda Paul on 5/3/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(orientationChanged:)
                                                 name: UIDeviceOrientationDidChangeNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationReceived:)
                                                 name:@"CustomNotification"
                                               object:nil];
}

-(void) orientationChanged:(NSNotificationCenter *) notification{
    NSLog(@"1st method is here");
}
-(void) notificationReceived:(NSNotificationCenter *) notification{
    NSLog(@"2nd method is here");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)CalculatePressed:(id)sender {
    
    NSString *string;
    string = [_inputField text];
    _outputField.text = @"100%";
    
    
    
}
@end
