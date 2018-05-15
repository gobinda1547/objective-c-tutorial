//
//  Being.h
//  protocol example
//
//  Created by Gobinda Paul on 5/15/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Being <NSObject>


@required
-(void) eat;
-(void) drink;


@optional
-(void) fly;

@end
