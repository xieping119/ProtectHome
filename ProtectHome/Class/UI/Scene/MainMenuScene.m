//
//  MyScene.m
//  ProtectHome
//
//  Created by xieping on 14-7-14.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import "MainMenuScene.h"


@implementation MainMenuScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        SKSpriteNode* bgSprite = [SKSpriteNode spriteNodeWithImageNamed:@"MainBackground.png"];
        bgSprite.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        [self addChild:bgSprite];
        
        _menuLayer = [[MainMenuLayer alloc] init];
        _menuLayer.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:_menuLayer];
//        _menuBgSprite = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenuBg.png"];
//        _menuBgSprite.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
//        [self addChild:_menuBgSprite];
//        
//        _menuExitSprite = [SKSpriteNode spriteNodeWithImageNamed:@"exiuButton.png"];
////        menuExitSprite.position = CGPointMake(CGRectGetMidX(menuBgSprite.frame),CGRectGetMidY(menuBgSprite.frame));
//        [_menuBgSprite addChild:_menuExitSprite];
        
//        SKTextureAtlas *testAtlas = [SKTextureAtlas atlasNamed:@"Archer_Attack"];
//        SKTexture* testTexture = [testAtlas textureNamed:@"archer_attack_0001.png"];
//        SKSpriteNode* testSprite = [SKSpriteNode spriteNodeWithTexture:testTexture];
//        testSprite.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
//        [self addChild:testSprite];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touched.");
    
    UITouch* touch = [touches anyObject];
    CGPoint positionInScene = [touch locationInNode:self];
    SKSpriteNode* touchedNode = (SKSpriteNode*)[self nodeAtPoint:positionInScene];
    if ([touchedNode.name isEqualToString:EXIT_BUTTON_NAME]) {
        NSLog(@"Exit button touched");
//        SKScene* gameScene = [[GameScene alloc] initWithSize:self.size];
//        SKTransition* doors = [SKTransition doorsOpenVerticalWithDuration:0.5];
        //[self.view presentScene:gameScene transition:doors];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

#pragma mark - Shared Asserts
+(void)loadSceneAssertsWithCompletionHandler:(PHAssertsLoadCompletionHandler)handler
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        [self loadSceneAsserts];
        
        if (handler) {
            return;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            handler();
        });
    });
}
+(void)loadSceneAsserts
{
    
}
+(void)releaseSceneAsserts
{
    
}
@end
