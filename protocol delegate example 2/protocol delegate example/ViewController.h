//
//  ViewController.h
//  protocol delegate example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController<SampleProtocolDelegate>
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UITextField *myTextField;

- (IBAction)startButtonAction:(id)sender;


@end

