//
//  ViewController.m
//  UI Example
//
//  Created by Gobinda Paul on 5/4/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UITableViewDelegate, UITableViewDataSource>


@end

@implementation ViewController{
    NSArray *nameArray;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    nameArray = [[NSArray alloc]initWithObjects:@"gobinda",@"abid",@"zilani", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString *cellId = @"cell1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId
                                                            forIndexPath:indexPath];
    
    UILabel *label = (UILabel*) [cell viewWithTag:101];
    label.text = [nameArray objectAtIndex:indexPath.row];
    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return nameArray.count;
}


@end
