//
//  Board.h
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BoardType;

@interface Board : NSObject

@property (nonatomic, strong) BoardType *type;
@property (nonatomic, strong) Board *nextSpace;
@property (nonatomic, strong) Board *previousSpace;
@property (nonatomic, assign) int currentSpace;

- (instancetype)initWithContent:(BoardType *)type;

@end
