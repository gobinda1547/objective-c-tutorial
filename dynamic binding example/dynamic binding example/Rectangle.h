//
//  Rectangle.h
//  dynamic binding example
//
//  Created by Gobinda Paul on 5/21/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject{
    float area;
}

-(void) calculateAreaWithLength:(CGFloat) length
                       andWidth:(CGFloat) width;
-(void) printArea;

@end
