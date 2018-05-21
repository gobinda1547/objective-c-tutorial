//
//  Square.h
//  dynamic binding example
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject{
    float area;
}

-(void) calculateAreaOfSide:(CGFloat) side;
-(void) printArea;

@end
