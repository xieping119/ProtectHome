//
//  GameScene.m
//  ProtectHome
//
//  Created by xieping on 14-7-29.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(id)initWithSize:(CGSize)size{
    if (self == [super initWithSize:size]) {
        SKSpriteNode* bgSprite = [SKSpriteNode spriteNodeWithImageNamed:@"MainBackground.png"];
        bgSprite.position = CGPointMake(CGRectGetMidX(self.frame),
                                        CGRectGetMidY(self.frame));
        [self addChild:bgSprite];
    }
    return self;
}
@end
