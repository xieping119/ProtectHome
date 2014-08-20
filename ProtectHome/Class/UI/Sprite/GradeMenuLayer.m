//
//  GradeMenuLayer.m
//  ProtectHome
//
//  Created by xieping on 14-7-31.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import "GradeMenuLayer.h"

@implementation GradeMenuLayer
-(id)init{
    if (self == [super init]) {
        SKSpriteNode* bgSprite = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenuBg.png"];
        [self addChild:bgSprite];
        
//        _menuExitSprite = [SKSpriteNode spriteNodeWithImageNamed:@"exiuButton.png"];
//        [_menuExitSprite setName:EXIT_BUTTON_NAME];
//        
//        [self addChild:_menuExitSprite];
        [self setMenuGrade1Button:[AGSpriteButton buttonWithImageNamed:GRADE1_NORMAL_BUTTON_FILE chosedImage:GRADE1_CHOSED_BUTTON_FILE]];
        [[self menuGrade1Button] setName:GRADE1_BUTTON_NAME];
        [[self menuGrade1Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:1] forControlEvent:AGButtonControlEventTouchDown];
        [self addChild:[self menuGrade1Button]];
        
        [self setMenuGrade2Button:[AGSpriteButton buttonWithImageNamed:GRADE2_NORMAL_BUTTON_FILE chosedImage:GRADE2_CHOSED_BUTTON_FILE]];
        [[self menuGrade2Button] setName:GRADE2_BUTTON_NAME];
        [[self menuGrade2Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:2] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade2Button] setPosition:CGPointMake(0, -50)];
        [self addChild:[self menuGrade2Button]];
        
        [self setMenuGrade3Button:[AGSpriteButton buttonWithImageNamed:GRADE3_NORMAL_BUTTON_FILE chosedImage:GRADE3_CHOSED_BUTTON_FILE]];
        [[self menuGrade3Button] setName:GRADE3_BUTTON_NAME];
        [[self menuGrade3Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:3] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade3Button] setPosition:CGPointMake(0, -100)];
        [self addChild:[self menuGrade3Button]];
        
        [self setMenuGrade4Button:[AGSpriteButton buttonWithImageNamed:GRADE4_NORMAL_BUTTON_FILE chosedImage:GRADE4_CHOSED_BUTTON_FILE]];
        [[self menuGrade4Button] setName:GRADE4_BUTTON_NAME];
        [[self menuGrade4Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:4] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade4Button] setPosition:CGPointMake(0, -150)];
        [self addChild:[self menuGrade4Button]];
        
        [self setMenuGrade5Button:[AGSpriteButton buttonWithImageNamed:GRADE5_NORMAL_BUTTON_FILE chosedImage:GRADE5_CHOSED_BUTTON_FILE]];
        [[self menuGrade5Button] setName:GRADE5_BUTTON_NAME];
        [[self menuGrade5Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:5] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade5Button] setPosition:CGPointMake(0, -200)];
        [self addChild:[self menuGrade5Button]];
        
        [self setMenuGrade6Button:[AGSpriteButton buttonWithImageNamed:GRADE6_NORMAL_BUTTON_FILE chosedImage:GRADE6_CHOSED_BUTTON_FILE]];
        [[self menuGrade6Button] setName:GRADE6_BUTTON_NAME];
        [[self menuGrade6Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:6] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade6Button] setPosition:CGPointMake(0, -250)];
        [self addChild:[self menuGrade6Button]];
        
        [self setMenuGrade7Button:[AGSpriteButton buttonWithImageNamed:GRADE7_NORMAL_BUTTON_FILE chosedImage:GRADE7_CHOSED_BUTTON_FILE]];
        [[self menuGrade7Button] setName:GRADE7_BUTTON_NAME];
        [[self menuGrade7Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:7] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade7Button] setPosition:CGPointMake(0, -300)];
        [self addChild:[self menuGrade7Button]];
        
        [self setMenuGrade8Button:[AGSpriteButton buttonWithImageNamed:GRADE8_NORMAL_BUTTON_FILE chosedImage:GRADE8_CHOSED_BUTTON_FILE]];
        [[self menuGrade8Button] setName:GRADE8_BUTTON_NAME];
        [[self menuGrade8Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:8] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade8Button] setPosition:CGPointMake(0, -350)];
        [self addChild:[self menuGrade8Button]];
        
        [self setMenuGrade9Button:[AGSpriteButton buttonWithImageNamed:GRADE9_NORMAL_BUTTON_FILE chosedImage:GRADE9_CHOSED_BUTTON_FILE]];
        [[self menuGrade9Button] setName:GRADE9_BUTTON_NAME];
        [[self menuGrade9Button] addTarget:self selector:@selector(selectGrade:) withObject:[NSNumber numberWithInt:9] forControlEvent:AGButtonControlEventTouchDown];
        [[self menuGrade9Button] setPosition:CGPointMake(0, -400)];
        [self addChild:[self menuGrade9Button]];
        
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
