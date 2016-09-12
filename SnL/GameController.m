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
    
    while (self.player1.currentPosition.currentSpace != self.boardSize && self.player2.currentPosition.currentSpace != self.boardSize) {
        [self roll:self.player1];
        [self printCurrentPosition];
        
        [self roll:self.player2];
        [self printCurrentPosition];
        
       
    }
    
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

-(void)printCurrentPosition{
    
    NSLog(@"Player 1's current position is %d", self.player1.currentPosition.currentSpace);
    NSLog(@"Player 2's current position is %d", self.player2.currentPosition.currentSpace);
    
}

-(void)roll:(Player *)player{
    
    InputController *inputController = [InputController new];
    
    while (YES) {
        NSString *roll = [inputController inputForPrompt:@"What number from 1 - 6 would you like to roll?"];
        
        int diceRoll;
        if ([roll isEqualToString:@"1"]) {
            diceRoll = 1;
        } else if ([roll isEqualToString:@"2"]){
            diceRoll = 2;
        } else if ([roll isEqualToString:@"3"]){
            diceRoll = 3;
        } else if ([roll isEqualToString:@"4"]){
            diceRoll = 4;
        } else if ([roll isEqualToString:@"5"]){
            diceRoll = 5;
        } else if ([roll isEqualToString:@"6"]){
            diceRoll = 6;
        } else {
            NSLog(@"Please enter a number between 1 - 6!\n");
        }
        if (diceRoll) {
            [self movePlayer:player withRoll:diceRoll];
            break;
        }
    }
    
}

-(void)movePlayer:(Player *)player withRoll:(int)diceRoll{
    
    for (int i = 0; i < diceRoll; i++) {
        if (player.currentPosition.nextSpace) {
            player.currentPosition = player.currentPosition.nextSpace;
        }
    }
    
    
}



@end

