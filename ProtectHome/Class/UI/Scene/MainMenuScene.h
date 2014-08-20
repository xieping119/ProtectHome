//
//  MainMenuScene.h
//  ProtectHome
//

//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "GameScene.h"
#import "../Sprite/MainMenuLayer.h"

typedef void (^PHAssertsLoadCompletionHandler)(void);

@interface MainMenuScene : SKScene

@property SKSpriteNode* menuBgSprite;
@property MainMenuLayer* menuLayer;

+ (void) loadSceneAssertsWithCompletionHandler:(PHAssertsLoadCompletionHandler)callback;
+ (void) loadSceneAsserts;
+ (void) releaseSceneAsserts;
@end
