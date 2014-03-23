//
//  Level.m
//  HappyDay
//
//  Created by Joshua Chao on 3/8/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level.h"
#import "Tile.h"
#import "GameScene.h"

@implementation Level

@synthesize levelString;

- (void)didLoadFromCCB {
    self.levelString = @"YOUR FINGERS ARE UNDER MY COMMAND!! MUAHAHA!!";
    //
    [self setWord:self.levelString];
}

- (void)setWord:(NSString *)word {

    
    for (int i=0; i< word.length; i++) {
        Tile *currentTile = (Tile *)self.children[i];
        currentTile.letter = [word substringWithRange:NSMakeRange(i,1)];
    }
    
    
    
}



@end
