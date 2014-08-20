//
//  MainMenuLayer.m
//  ProtectHome
//
//  Created by xieping on 14-7-31.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import "MainMenuLayer.h"

@implementation MainMenuLayer
-(id)init{
    if (self == [super init]) {
        SKSpriteNode* bgSprite = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenuBg.png"];
        [self addChild:bgSprite];
        
//        _menuExitSprite = [SKSpriteNode spriteNodeWithImageNamed:@"exiuButton.png"];
//        [_menuExitSprite setName:EXIT_BUTTON_NAME];
//        
//        [self addChild:_menuExitSprite];
        [self setMenuSelectGradeButton:[AGSpriteButton buttonWithImageNamed:GRADE_SElECT_NORMAL_BUTTON_FILE chosedImage:GRADE_SElECT_CHOSED_BUTTON_FILE]];
        [[self menuSelectGradeButton] setName:GRADE_SElECT_BUTTON_NAME];
        [[self menuSelectGradeButton] addTarget:self selector:@selector(selectGrade:) withObject:[NSNull null] forControlEvent:AGButtonControlEventTouchDown];
        
        [self addChild:[self menuSelectGradeButton]];
        
        [self setMenuSelectCourseButton:[AGSpriteButton buttonWithImageNamed:COURSE_SELECT_NORMAL_BUTTON_FILE chosedImage:COURSE_SELECT_CHOSED_BUTTON_FILE]];
        [[self menuSelectCourseButton] setName:COURSE_SELECT_BUTTON_NAME];
        [[self menuSelectCourseButton] addTarget:self selector:@selector(selectCourse:) withObject:[NSNull null] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuSelectCourseButton] setPosition:CGPointMake(0, -80)];
        [self addChild:[self menuSelectCourseButton]];
        
        [self setGradeMenu:[[GradeMenuLayer alloc] init]];
        [[self gradeMenu] setPosition:CGPointMake([self position].x + [bgSprite frame].size.width, [self position].y)];
    }
    return self;
}

-(void)selectGrade:(NSValue*)pointValue
{
    NSLog(@"select grade");
    [self addChild:[self gradeMenu]];
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
