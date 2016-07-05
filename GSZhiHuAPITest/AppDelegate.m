//
//  AppDelegate.m
//  GSZhiHuAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "AppDelegate.h"
#import "ZHMainViewController.h"
#import "NeteaseNewsMainController.h"
#import "VideoNewsMainController.h"
#import "MainViewController.h"
#import "LaunchAnimationView.h"
#import "UIWindow+Launch.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:kScreenBounds];
    
    ZHMainViewController *zhiHuMainController = [[ZHMainViewController alloc] init];
    NeteaseNewsMainController *neteastNewMainController = [[NeteaseNewsMainController alloc] init];
    VideoNewsMainController *videoNewsMainController = [[VideoNewsMainController alloc] init];
    videoNewsMainController.title = GSLocalizedString(@"video_title", nil);
    MainViewController *livemMainViewController = [[MainViewController alloc] init];
    livemMainViewController.title = GSLocalizedString(@"live_title", nil);
    MainViewController *userInfomMainViewController = [[MainViewController alloc] init];
    userInfomMainViewController.title = GSLocalizedString(@"userinfo_title", nil);
    
    UINavigationController *naviZhiHu = [[UINavigationController alloc] initWithRootViewController:zhiHuMainController];
//    naviZhiHu.navigationBar.barTintColor = [UIColor blackColor];//导航栏背景颜色
    UINavigationController *neteaseNews = [[UINavigationController alloc] initWithRootViewController:neteastNewMainController];
    UINavigationController *videoNews = [[UINavigationController alloc] initWithRootViewController:videoNewsMainController];
    UINavigationController *liveVideo = [[UINavigationController alloc] initWithRootViewController:livemMainViewController];
    UINavigationController *userInfo = [[UINavigationController alloc] initWithRootViewController:userInfomMainViewController];
    
    self.mainTabBarController = [[UITabBarController alloc] init];
    [self.mainTabBarController setViewControllers:[NSArray arrayWithObjects:naviZhiHu, neteaseNews, videoNews, liveVideo, userInfo, nil]];
//    self.mainTabBarController.selectedIndex = 0;
    [self setCustomTabar];
    
    self.window.rootViewController = self.mainTabBarController;
    [self.window makeKeyAndVisible];
    
//    [self.window launchAnimationView];
//    self.launchAnimationViewController = [[LaunchAnimationView alloc] init];
//    [self.window addSubview:self.launchAnimationViewController.view];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)setCustomTabar
{
    UITabBar *tabbar = self.mainTabBarController.tabBar;
    
    UITabBarItem *item1 = [tabbar.items objectAtIndex:0];
    
    UITabBarItem *item2 = [tabbar.items objectAtIndex:1];
    
    UITabBarItem *item3 = [tabbar.items objectAtIndex:2];
    
    UITabBarItem *item4 = [tabbar.items objectAtIndex:3];
    
    UITabBarItem *item5 = [tabbar.items objectAtIndex:4];
    
    item1.title = GSLocalizedString(@"zhihu_title", nil);
    
    item2.title = GSLocalizedString(@"netease_title", nil);
    
//    item3.title = GSLocalizedString(@"video_title", nil);
    item3.title = nil;
    
    item4.title = GSLocalizedString(@"live_title", nil);
    
    item5.title = GSLocalizedString(@"userinfo_title", nil);
    
    item1.selectedImage = [[UIImage imageNamed:@"message_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item1.image = [[UIImage imageNamed:@"message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item2.selectedImage = [[UIImage imageNamed:@"message_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item2.image = [[UIImage imageNamed:@"message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    item3.selectedImage = [[UIImage imageNamed:@"message_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item3.image = [[UIImage imageNamed:@"message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item3.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);//设置图片居中，注意这里的两个值6，-6
    
    
    
    item4.selectedImage = [[UIImage imageNamed:@"message_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item4.image = [[UIImage imageNamed:@"message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item5.selectedImage = [[UIImage imageNamed:@"message_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    item5.image = [[UIImage imageNamed:@"message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //改变UITabBarItem字体颜色
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:255/255 green:255/255 blue:255/255 alpha:1.0],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
}

- (void)setCustomNaviItem
{
    
}

@end
