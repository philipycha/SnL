//
//  main.m
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "InputController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputController *inputController = [InputController new];
        
        NSString *boardSizeString = [inputController inputForPrompt:@"Choose your board size!"];
        
        NSString *difficultyString = [inputController inputForPrompt:@"Choose a difficulty 'e' - easy\n'm' - medium\n'h' - hard"];
        
        int boardSize = [boardSizeString intValue];
        
        int intDifficulty;
        
        if ([difficultyString isEqualToString:@"e"]) {
            
            intDifficulty = Easy;
            
        } else if ([difficultyString isEqualToString:@"m"]){
            
            intDifficulty = Medium;
            
        } else if([difficultyString isEqualToString:@"h"]){
            
            intDifficulty = Hard;
            
        }
        
        GameController *newGame = [[GameController alloc] initWithBoardSize:boardSize andDifficulty:intDifficulty];
        
        [newGame startGame];
        
    
        
        
        
    }
    return 0;
}
