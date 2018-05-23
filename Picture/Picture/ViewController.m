//
//  ViewController.m
//  Picture
//
//  Created by Gobinda Paul on 5/9/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)goToNextView:(id)sender {
    
    NSLog(@"i am jiltu");
    //This will identify the Storyboard in use
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"   bundle:nil];
    
    //This will identify the View Controller to switch to
    //ViewController2 *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"VV2" ];
    //[self presentViewController:vc2 animated:YES completion:NULL];
    
    //ViewController2 *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"VV2"];
    //[self.navigationController pushViewController:newView animated:YES];
    
    ViewController2 *VC2=[self.storyboard instantiateViewControllerWithIdentifier:@"SBID2"];
    [self presentViewController:VC2 animated:YES completion:nil];
    
}
@end
