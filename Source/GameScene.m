//
//  GameScene.m
//  HappyDay
//
//  Created by Joshua Chao on 3/8/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "GameScene.h"

Level *level;
int levelNumber;
int NumberOfClearedLetters;
int HeartsNumber;
CCSprite * _heart1;
CCSprite * _heart2;
CCSprite * _heart3;
CCSprite * _heart4;
CCSprite * _heart5;

@implementation GameScene {
    CCNode *_levelNode;
}


- (void)didLoadFromCCB {
    level = [CCBReader load:@"Levels/Level1"];
    [_levelNode addChild:level];
    levelNumber = 0;
    NumberOfClearedLetters = 0;
    HeartsNumber = 5;
   // [self all];
    //levelStringPseudo= @"HELLO             ";

}

- (void) removeTile: (CCSprite *)Tile {
    [Tile removeFromParentAndCleanup:YES];
}

-(void) all
{
        /* if (val == buttonValue)
     {
     [self removedTile: tile];
     }
     
     else {
     
     }*/
    
}
    -(void) onwardPressed {
        CCScene *gameplayScene = [CCBReader loadAsScene:@"GameScene"];
        [[CCDirector sharedDirector] replaceScene:gameplayScene];
    }

    - (void)Qpressed {
        [self buttonPressed:@"Q"];
    }
    - (void)Wpressed {
        [self buttonPressed:@"W"];
    }
    - (void)Epressed {
        [self buttonPressed:@"E"];
    }
    - (void)Rpressed {
        [self buttonPressed:@"R"];
    }
    - (void)Tpressed {
        [self buttonPressed:@"T"];
    }
    - (void)Ypressed {
        [self buttonPressed:@"Y"];
    }
    - (void)Upressed {
        [self buttonPressed:@"U"];
    }
    - (void)Ipressed {
        [self buttonPressed:@"I"];
    }
    - (void)Opressed {
        [self buttonPressed:@"O"];
    }
    - (void)Ppressed {
        [self buttonPressed:@"P"];
    }
    - (void)Apressed {
        [self buttonPressed:@"A"];
    }
    - (void)Spressed {
        [self buttonPressed:@"S"];
    }
    - (void)Dpressed {
        [self buttonPressed:@"D"];
    }
    - (void)Fpressed {
        [self buttonPressed:@"F"];
    }
    - (void)Gpressed {
        [self buttonPressed:@"G"];
    }
    - (void)Hpressed {
        [self buttonPressed:@"H"];
    }
    - (void)Jpressed {
        [self buttonPressed:@"J"];
    }
    - (void)Kpressed {
        [self buttonPressed:@"K"];
    }
    - (void)Lpressed {
        [self buttonPressed:@"L"];
    }
    - (void)Zpressed {
        [self buttonPressed:@"Z"];
    }
    - (void)Xpressed {
        [self buttonPressed:@"X"];
    }
    - (void)Cpressed {
        [self buttonPressed:@"C"];
    }
    - (void)Vpressed {
        [self buttonPressed:@"V"];
    }
    - (void)Bpressed {
        [self buttonPressed:@"B"];
    }
    - (void)Npressed {
        [self buttonPressed:@"N"];
    }
    - (void)Mpressed {
        [self buttonPressed:@"M"];
    }
    - (void)SPACEpressed {
        [self buttonPressed:@" "];
    }
    - (void)COMMApressed {
        [self buttonPressed:@","];
    }
    - (void)PERIODpressed {
        [self buttonPressed:@"!"];
    }

-(void) buttonPressed: (NSString *) letter
{
    NSArray * tiles = level.children;
    BOOL removedLetter = FALSE;
    for(Tile * t in tiles)
    {
       if([t.letter isEqualToString:letter] && !removedLetter)
       {
           t.letter = @"blank";
           removedLetter = TRUE;
           NumberOfClearedLetters++;
           [self amICleared];
       //    CCParticleSystem *explosion = (CCParticleSystem *)[CCBReader load:@"TileExplosion"];
       //    explosion.autoRemoveOnFinish = TRUE;
       //    explosion.position = t.position;
       //    [t.parent addChild:explosion];
           
       }
       else {
           HeartsNumber = HeartsNumber -1;
           if( HeartsNumber == 4 ){
               _heart5.spriteFrame = [CCSpriteFrame frameWithImageNamed:@"blank.png"];
               _heart5.visible = NO;
           }
           
       }
    }
}
-(void) amICleared
{
    //check gamestate every time a letter is removed to see if the board is clear. If so, reset all the tiles to new strings
    if (NumberOfClearedLetters == level.levelString.length) {
        CCScene *gameplayScene = [CCBReader loadAsScene:@"Win"];
        [[CCDirector sharedDirector] replaceScene:gameplayScene];
        if(levelNumber ==1){
            level.levelString = @"WE HAD TO MAKE THIS IDIOTPROOF JUST FOR YOU!";
            [level setWord:level.levelString];
        }
        if(levelNumber ==2) {
            level.levelString = @"BUT DO NOT WORRY FRIEND, WE STILL LOVE YOU HEH";
            [level setWord:level.levelString];
        }
        if (levelNumber == 3) {
            level.levelString = @"CAUSE WE ARE ALL FUCKING AWESOME! HELL YEAHH!";
        }
        levelNumber++;
    }
}



@end
