//
//  Board.m
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "Board.h"

@implementation Board

- (instancetype)initWithContent:(BoardType *)type {
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}


@end
