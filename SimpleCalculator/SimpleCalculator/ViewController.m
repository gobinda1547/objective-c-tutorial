//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Gobinda Paul on 4/26/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    characterPressedOrNot = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)plusButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@+",_inputFiled.text];
}

- (IBAction)minusButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@-",_inputFiled.text];
}

- (IBAction)multiplyButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@*",_inputFiled.text];
}

- (IBAction)divisionButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@/",_inputFiled.text];
}

- (IBAction)doubleZeroButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@00",_inputFiled.text];
}

- (IBAction)dotButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@.",_inputFiled.text];
}

- (IBAction)clearButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@""];
    _outputField.text = [NSString stringWithFormat:@""];
}

- (IBAction)deleteButtonPressed:(id)sender {
    NSString *ifHave = _inputFiled.text;
    if(ifHave.length == 0){
        return;
    }
    NSRange range = NSMakeRange(0, ifHave.length-1);
    _inputFiled.text = [ifHave substringWithRange:range];
}

- (IBAction)modularButtonPressed:(id)sender {
    _inputFiled.text = [NSString stringWithFormat:@"%@\%%",_inputFiled.text];
}

- (IBAction)equalButtonPressed:(id)sender {
    _outputField.text = @"";
    int totalOperator = 0;
    char operator = 'a';
    for(int i = 0;i < [_inputFiled.text length];i++){
        char ch = [_inputFiled.text characterAtIndex:i];
        if(ch == '+' || ch == '-' || ch == '*' || ch=='/' || ch == '%'){
            totalOperator++;
            operator = ch;
        }
    }
    
    if(totalOperator == 0){
        _outputField.text = _inputFiled.text;
        return;
    }else if(totalOperator >1 ){
        _outputField.text = @"multiple operator not allowed!";
        return;
    }
    
    
    if(operator == '+'){
        NSArray *array = [_inputFiled.text componentsSeparatedByString:@"+"];
        int a = [[NSString stringWithFormat:@"%@",array[0]] intValue];
        int b = [[NSString stringWithFormat:@"%@",array[1]] intValue];
        int c = a+b;
        NSLog(@"%d+%d=%d",a,b,c);
        _outputField.text = [NSString stringWithFormat:@"%d",c];
    }else if(operator == '-'){
        NSArray *array = [_inputFiled.text componentsSeparatedByString:@"-"];
        int a = [[NSString stringWithFormat:@"%@",array[0]] intValue];
        int b = [[NSString stringWithFormat:@"%@",array[1]] intValue];
        int c = a-b;
        NSLog(@"%d+%d=%d",a,b,c);
        _outputField.text = [NSString stringWithFormat:@"%d",c];
    }else if(operator == '*'){
        NSArray *array = [_inputFiled.text componentsSeparatedByString:@"*"];
        int a = [[NSString stringWithFormat:@"%@",array[0]] intValue];
        int b = [[NSString stringWithFormat:@"%@",array[1]] intValue];
        int c = a*b;
        NSLog(@"%d+%d=%d",a,b,c);
        _outputField.text = [NSString stringWithFormat:@"%d",c];
    }else if(operator=='/'){
        NSArray *array = [_inputFiled.text componentsSeparatedByString:@"/"];
        int a = [[NSString stringWithFormat:@"%@",array[0]] intValue];
        int b = [[NSString stringWithFormat:@"%@",array[1]] intValue];
        int c = a/b;
        NSLog(@"%d+%d=%d",a,b,c);
        _outputField.text = [NSString stringWithFormat:@"%d",c];
    }else if(operator == '%'){
        NSArray *array = [_inputFiled.text componentsSeparatedByString:@"%"];
        int a = [[NSString stringWithFormat:@"%@",array[0]] intValue];
        int b = [[NSString stringWithFormat:@"%@",array[1]] intValue];
        int c = a%b;
        NSLog(@"%d+%d=%d",a,b,c);
        _outputField.text = [NSString stringWithFormat:@"%d",c];
    }else {
        _outputField.text = @"Unidentified Operator!";
        return;
    }
    
    
}

-(IBAction)numberPressed:(UIButton *)sender{
    NSInteger tag = sender.tag;
    NSString *nowHave = _inputFiled.text;
    [_inputFiled setText: [NSString stringWithFormat:@"%@%ld",nowHave,tag]];
}



@end




