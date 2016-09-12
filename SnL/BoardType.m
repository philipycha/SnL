//
//  BoardType.m
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "BoardType.h"

@implementation BoardType

- (instancetype)init
{
    self = [super init];
    if (self) {
        // how many spaces ladder + snake will move player
        _space = 4;
    }
    return self;
}

-(void)movePlayer:(Player *)player {
    
}

@end
