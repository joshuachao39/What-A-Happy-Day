    //
//  Tile.m
//  HappyDay
//
//  Created by Joshua Chao on 3/8/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Tile.h"

@implementation Tile

- (void)didLoadFromCCB {
}


- (void)setLetter:(NSString *)letter {
    _letter = letter;
    
    NSString *filename = [NSString stringWithFormat:@"%@.png", _letter];
    //if ([_letter isEqualToString:@"."]) {
      //  NSString *filename = [NSString stringWithFormat:@"period.png"];
        
   // }
    self.spriteFrame = [CCSpriteFrame frameWithImageNamed:filename];
}


@end
