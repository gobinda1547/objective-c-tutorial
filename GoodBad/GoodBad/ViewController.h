//
//  ViewController.h
//  GoodBad
//
//  Created by Gobinda Paul on 5/3/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UILabel *outputField;


- (IBAction)CalculatePressed:(id)sender;



@end

