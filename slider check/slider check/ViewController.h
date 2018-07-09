//
//  ViewController.h
//  slider check
//
//  Created by Gobinda Paul on 6/28/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)buttonPressed:(id)sender;



- (IBAction)sliderChanged:(id)sender;

@end

