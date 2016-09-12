//
//  GameController.h
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Board.h"
#import "Player.h"

typedef NS_ENUM(NSInteger, Difficulty) {
    Easy,
    Medium,
    Hard
};


@interface GameController : NSObject

@property (nonatomic, strong) Board *start;
@property (nonatomic, assign) int boardSize;
@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic, assign) Difficulty difficulty;

-(instancetype)initWithBoardSize:(int)boardSize andDifficulty:(Difficulty)difficulty;

-(Board *) generateBoard;

-(void)startGame;
-(void)printCurrentPosition;
-(void)roll:(Player *)player;
-(void)movePlayer:(Player *)player withRoll:(int)diceRoll;

@end
