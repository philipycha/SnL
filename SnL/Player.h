//
//  Player.h
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Board.h"

@interface Player : NSObject

@property (nonatomic) NSInteger distanceMoved;

@property (nonatomic, strong) Board *currentPosition;

@end
