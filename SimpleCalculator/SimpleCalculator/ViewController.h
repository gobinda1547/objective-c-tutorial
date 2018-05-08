//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Gobinda Paul on 4/26/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    Boolean characterPressedOrNot;
}

@property (weak, nonatomic) IBOutlet UILabel *inputFiled;
@property (weak, nonatomic) IBOutlet UILabel  *outputField;


- (IBAction)plusButtonPressed:(id)sender;
- (IBAction)minusButtonPressed:(id)sender;
- (IBAction)multiplyButtonPressed:(id)sender;
- (IBAction)divisionButtonPressed:(id)sender;
- (IBAction)doubleZeroButtonPressed:(id)sender;
- (IBAction)dotButtonPressed:(id)sender;
- (IBAction)clearButtonPressed:(id)sender;
- (IBAction)deleteButtonPressed:(id)sender;
- (IBAction)modularButtonPressed:(id)sender;
- (IBAction)equalButtonPressed:(id)sender;



- (IBAction)numberPressed:(UIButton*)sender;





@end

