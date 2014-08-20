//
//  MainMenuLayer.h
//  ProtectHome
//
//  Created by xieping on 14-7-31.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "../../Global/Configure.h"
#import "AGSpriteButton.h"
#import "GradeMenuLayer.h"

@interface MainMenuLayer : SKNode
//@property SKSpriteNode* menuExitSprite;
@property AGSpriteButton* menuSelectGradeButton;
@property AGSpriteButton* menuSelectCourseButton;
@property AGSpriteButton* menuStartGameButton;
@property AGSpriteButton* menuAchivementButton;

@property GradeMenuLayer* gradeMenu;

//-(void)ShowMenuButton;
@end


