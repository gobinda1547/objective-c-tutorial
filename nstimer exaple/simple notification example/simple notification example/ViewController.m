//
//  ViewController.m
//  simple notification example
//
//  Created by Gobinda Paul on 5/24/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSTimer *timer;
    int hourValue;
    int minuteValue;
    int secondValue;
}

@property (weak, nonatomic) IBOutlet UILabel *hour;
@property (weak, nonatomic) IBOutlet UILabel *minute;
@property (weak, nonatomic) IBOutlet UILabel *second;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    hourValue=0;
    minuteValue=0;
    secondValue=0;
    NSLog(@"view did load method execution complete!");
}

- (IBAction)startTimer:(UIButton *)sender {
    if([timer isValid]){
        return;
    }
    timer = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                             target: self
                                           selector:@selector(onTick)
                                           userInfo: nil repeats:YES];
}

- (IBAction)pauseTimer:(UIButton *)sender {
    [timer invalidate];
}

- (IBAction)stopTimer:(UIButton *)sender {
    [timer invalidate];
    hourValue=0;
    minuteValue=0;
    secondValue=0;
    [self refreshUI];
}

- (IBAction)resetTimer:(id)sender {
    [timer invalidate];
    hourValue=0;
    minuteValue=0;
    secondValue=0;
    [self refreshUI];
    [self startTimer:sender];
}

-(void) onTick{
    NSLog(@"called tick method : %d %d %d",secondValue,minuteValue,hourValue);
    secondValue++;
    if(secondValue == 60){
        secondValue = 0;
        minuteValue++;
        if(minuteValue == 60){
            minuteValue=0;
            hourValue++;
            if(hourValue == 24){
                hourValue = 0;
            }
        }
    }
    [self refreshUI];
}


-(void) refreshUI{
    _second.text = (secondValue > 9) ? [NSString stringWithFormat:@"%d",secondValue] : [NSString stringWithFormat:@"0%d",secondValue];
    _minute.text = (minuteValue > 9) ? [NSString stringWithFormat:@"%d",minuteValue] : [NSString stringWithFormat:@"0%d",minuteValue];
    _hour.text = (hourValue > 9) ? [NSString stringWithFormat:@"%d",hourValue] : [NSString stringWithFormat:@"0%d",hourValue];
}

@end
