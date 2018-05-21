//
//  Rectangle.m
//  dynamic binding example
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle


- (void)calculateAreaWithLength:(CGFloat)length andWidth:(CGFloat)width{
    area = length * width;
}

- (void)printArea{
    NSLog(@"The area of Rectangle is %f",area);
}


@end
