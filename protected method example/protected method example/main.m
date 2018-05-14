//
//  main.m
//  protected method example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ship.h"
#import "ResearchShip.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Ship *genericShip = [[Ship alloc] init];
        [genericShip shoot];
        
        Ship *discoveryOne = [[ResearchShip alloc] init];
        [discoveryOne shoot];
        
    }
    return 0;
}
