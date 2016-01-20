//
//  CustomLaunch.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CustomLaunch.h"

@interface CustomLaunch ()
{
    NSDictionary *imageDic;
    LaunchType launchType;
}

@end

@implementation CustomLaunch

- (id)init
{
    self = [super init];
    if (self) {
        //init
        
    }
    return self;
}

- (id)initWithImageDic:(NSDictionary *)dic Delegate:(id<LaunchViewAdd>)delegate
{
    self = [self init];
    if (self) {
        self.delegate = delegate;
        
        imageDic = [[NSDictionary alloc] initWithDictionary:dic];
        launchType = (1 == [imageDic.allValues count])?LaunchTypeSigleImage:LaunchTypeMultiImage;
        
        [self updateLaunchView];
    }
    return self;
}

#pragma mark -- private

- (void)updateLaunchView
{
    switch (launchType) {
        case LaunchTypeSigleImage:
        {
            for (UIImage *image in [imageDic allValues]) {
                LaunchView *subLaunchView = [[LaunchView alloc] initWithImage:image];
                subLaunchView.delegate = (id<UIEventDelegate>)(self.delegate);
                
                if (self.delegate && [self.delegate respondsToSelector:@selector(addLaunchSubView:)]) {
                    [self.delegate addLaunchSubView:subLaunchView];
                }
            }
        }
            break;
        case LaunchTypeMultiImage:
        {
            //scroller
        }
            break;
        default:
            break;
    }
}

@end
