//
//  ViewController.m
//  ProtectHome
//
//  Created by xieping on 14-7-14.
//  Copyright (c) 2014年 xieping. All rights reserved.
//

#import "ViewController.h"
//#import "MyScene.h"
#import "MainMenuScene.h"
@interface ViewController()

@property (nonatomic) IBOutlet UIActivityIndicatorView* loadingProgressIndicator;

@end
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    
    // Create and configure the scene.
    SKScene *scene = [MainMenuScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
//    [self.loadingProgressIndicator startAnimating];
//    [MainMenuScene loadSceneAssertsWithCompletionHandler:^{
//        MainMenuScene* menuScene = (MainMenuScene*)scene;
//        [menuScene ShowMenuButton];
    //}];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
