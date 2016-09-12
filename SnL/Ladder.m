//
//  Ladder.m
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "Ladder.h"

@implementation Ladder

-(void)movePlayer:(Player *)player {
    
    for (int i = 0; i < self.space; i++)
        player.currentPosition = player.currentPosition.nextSpace;
}

@end
