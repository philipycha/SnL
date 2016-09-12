//
//  InputController.m
//  SnL
//
//  Created by Philip Ha on 2016-09-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "InputController.h"

@implementation InputController

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    NSLog(@"%@", promptString);
    
    char userInput[50];
    fgets(userInput, 50, stdin);
    NSString *inputSelected = [NSString stringWithUTF8String:userInput];
    
    inputSelected  = [inputSelected stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    
    return inputSelected;
    
    
}


@end
