//
//  Square.m
//  dynamic binding example
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) calculateAreaOfSide:(CGFloat)side{
    area = side*side;
}

-(void) printArea{
    NSLog(@"the are of the square is %f",area);
}

@end
