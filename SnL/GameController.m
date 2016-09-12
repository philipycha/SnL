//
//  GameController.m
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "GameController.h"
#import "InputController.h"
#import "BoardType.h"
#import "Snake.h"
#import "Ladder.h"

@implementation GameController

- (instancetype)initWithBoardSize:(int)boardSize andDifficulty:(Difficulty)difficulty
{
    self = [super init];
    if (self) {
        
        _boardSize = (boardSize * boardSize);
        
        _difficulty = difficulty;
        _start = [self generateBoard];
        
        _player1 = [Player new];
        _player2 = [Player new];
        
        _player1.currentPosition = _start;
        _player2.currentPosition = _start;
    }
    return self;
}

-(void)startGame {
    
    NSLog(@"reach %d to win!", self.boardSize);
    
}

- (Board *)generateBoard {
    
    Board *home = [[Board alloc] initWithContent:nil];
    
    home.currentSpace = 1;
    Board *spaceCursor = home;
    Board *previousSpace;
    
    for (int i = 0; i < self.boardSize; i++){
        
        spaceCursor.nextSpace = [[Board alloc] init];
        
        spaceCursor.nextSpace.currentSpace = i + 1;
        previousSpace = spaceCursor;
        spaceCursor = spaceCursor.nextSpace;
        spaceCursor.previousSpace = previousSpace;
        
        
    }
    
    return home;
    
}




@end

