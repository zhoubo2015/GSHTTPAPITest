//
//  UIWindow+Launch.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "UIWindow+Launch.h"
#import "LaunchAnimationView.h"

@implementation UIWindow (Launch)

- (void)launchAnimationView
{
    LaunchAnimationView * vc = [[LaunchAnimationView alloc] init];
    
    [self addSubview:vc.view];
}

@end
