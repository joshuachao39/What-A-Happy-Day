//
//  Level.h
//  HappyDay
//
//  Created by Joshua Chao on 3/8/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface Level : CCNode


@property (nonatomic, strong) NSString *levelString;
- (void)setWord:(NSString *)word;

@end
