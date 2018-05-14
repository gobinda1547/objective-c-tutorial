//
//  ResearchShip.m
//  protected method example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "ResearchShip.h"
#import "Ship_Protected.h"

@implementation ResearchShip

- (void)extendTelescope {
    NSLog(@"Extending the telescope");
}

// Override protected method
- (void)prepareToShoot {
    NSLog(@"Oh shoot! We need to find some weapons!");
}

@end
