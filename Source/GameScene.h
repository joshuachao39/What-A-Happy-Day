//
//  GameScene.h
//  HappyDay
//
//  Created by Joshua Chao on 3/8/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Level.h"
#import "Tile.h"

@interface GameScene : CCNode  {
    char buttonValue;
    Tile *tile;
    //NSString *levelStringPseudo;
}

@property int *levelNumber;
@end
