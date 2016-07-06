//
//  AFNZhiHu.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/6.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "AFNZhiHu.h"
#import "AFNTool.h"

@implementation AFNZhiHu

+ (void)getDetailStoryWithStoryId:(NSNumber *)storyId Callback:(void (^)(id json))callBack
{
    //http://news-at.zhihu.com/api/4/news/3892357
    [AFNTool get:[NSString stringWithFormat:@"http://news-at.zhihu.com/api/4/news/%@",storyId] params:nil success:^(id json) {
        callBack(json);
    }
    failure:^(NSError *error) {
        nil;
    }];
}

@end
