//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
///Users/joshuachao/Documents/iPhone Apps/HappyDay.spritebuilder/Source/MainScene.m

#import "MainScene.h"

@implementation MainScene

- (void)playPressed {
    CCScene *gameplayScene = [CCBReader loadAsScene:@"GameScene"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}

-(void)optionsPressed {
   CCLOG(@"play button pressed");
}

@end
