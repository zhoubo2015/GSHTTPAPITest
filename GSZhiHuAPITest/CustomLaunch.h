//
//  CustomLaunch.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LaunchView.h"

typedef NS_ENUM(NSInteger, LaunchType) {
    LaunchTypeSigleImage = 0,
    LaunchTypeMultiImage
};

@protocol LaunchViewAddRemove <NSObject>

@required
- (void)addLaunchSubView:(id)view;
- (void)removeLanuchSubView;

@end

@interface CustomLaunch : NSObject
<
UIEventDelegate
>

@property (nonatomic, weak)id<LaunchViewAddRemove>delegate;

- (id)initWithImageDic:(NSDictionary *)dic Delegate:(id<LaunchViewAddRemove>)delegate;

@end
