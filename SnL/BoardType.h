//
//  BoardType.h
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface BoardType : NSObject

@property (nonatomic, assign) int space;

-(void)movePlayer:(Player *) player;

@end
