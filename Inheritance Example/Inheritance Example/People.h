//
//  People.h
//  Inheritance Example
//
//  Created by Gobinda Paul on 5/8/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject



//attributes
@property NSString *name;
@property (nonatomic, assign) NSInteger age;
@property NSString *mobile;



//constructors
-(id) init;
-(id) initWhereNameIs:(NSString*)name
                     whereAgeIs:(NSInteger)age
                  whereMobileIs:(NSString*)mobile;


//instance method
-(void) display;




@end
