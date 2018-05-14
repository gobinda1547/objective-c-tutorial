//
//  Ship.m
//  protected method example
//
//  Created by Gobinda Paul on 5/14/18.
//  Copyright © 2018 Gobinda Paul. All rights reserved.
//

#import "Ship.h"
#import "Ship_Protected.h"

@implementation Ship {
    BOOL _gunIsReady;
}

- (void)shoot {
    if (!_gunIsReady) {
        [self prepareToShoot];
        _gunIsReady = YES;
    }
    NSLog(@"Firing!");
}

- (void)prepareToShoot {
    // Execute some private functionality.
    NSLog(@"Preparing the main weapon...");
}
@end
