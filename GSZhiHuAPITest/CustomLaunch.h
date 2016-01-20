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

@protocol LaunchViewAdd <NSObject>

@required
- (void)addLaunchSubView:(id)view;

@end

@interface CustomLaunch : NSObject

@property (nonatomic, weak)id<LaunchViewAdd>delegate;

- (id)initWithImageDic:(NSDictionary *)dic Delegate:(id<LaunchViewAdd>)delegate;

@end
