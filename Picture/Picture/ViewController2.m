//
//  ViewController2.m
//  Picture
//
//  Created by Gobinda Paul on 5/9/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)goToPageOne:(id)sender {
    
    ViewController2 *VC2=[self.storyboard instantiateViewControllerWithIdentifier:@"SBID1"];
    [self presentViewController:VC2 animated:YES completion:nil];
}
@end
