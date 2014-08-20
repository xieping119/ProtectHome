//
//  CourseMenuLayer.m
//  ProtectHome
//
//  Created by xieping on 14-7-31.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import "CourseMenuLayer.h"

@implementation CourseMenuLayer
-(id)init{
    if (self == [super init]) {
        SKSpriteNode* bgSprite = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenuBg.png"];
        [self addChild:bgSprite];
        
//        _menuExitSprite = [SKSpriteNode spriteNodeWithImageNamed:@"exiuButton.png"];
//        [_menuExitSprite setName:EXIT_BUTTON_NAME];
//        
//        [self addChild:_menuExitSprite];
        
        
    }
    return self;
}

-(void)selectGrade:(NSValue*)pointValue
{
    NSLog(@"select grade");
}

-(void)selectCourse:(NSValue*)pointValue
{
    NSLog(@"select course");
}



//-(void)ShowMenuButton
//{
//    [self addChild:_menuExitSprite];
//}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    NSLog(@"touched!");
//    UITouch* touch = [touches anyObject];
//    CGPoint positionInScene = [touch locationInNode:self];
//    SKSpriteNode* touchedNode = (SKSpriteNode*)[self nodeAtPoint:positionInScene];
//    if ([_menuExitSprite isEqual:touchedNode]) {
//        NSLog(@"Exit button touched");
//    }
//}
@end
