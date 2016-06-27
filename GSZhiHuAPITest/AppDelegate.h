//
//  AppDelegate.h
//  GSZhiHuAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class MainViewController;
@class LaunchAnimationView;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//@property (nonatomic, strong) MainViewController *mainViewController;
@property (nonatomic, strong) UITabBarController *mainTabBarController;
@property (nonatomic, strong) LaunchAnimationView * launchAnimationViewController;

@end

