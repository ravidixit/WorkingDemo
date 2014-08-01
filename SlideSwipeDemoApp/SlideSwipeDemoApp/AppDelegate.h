//
//  AppDelegate.h
//  SlideSwipeDemoApp
//
//  Created by FLPUNPDSMAC on 01/08/14.
//  Copyright (c) 2014 FLPUNPDSMAC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FirstVC.h"

@class SWRevealViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SWRevealViewController *viewController;
@property (nonatomic,strong) FirstVC *firstVC;

@end
