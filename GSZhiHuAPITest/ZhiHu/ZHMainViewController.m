//
//  ZHMainViewController.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/6/27.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

/*
 http://blog.csdn.net/kinglearnjava/article/details/44173997
 */

#import "ZHMainViewController.h"
#import "AFNTool.h"
#import "LatestSectionModel.h"
#import "MJExtension.h"

@implementation ZHMainViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor grayColor];
    self.title = GSLocalizedString(@"zhihu_title", nil);
    
//    [AFNTool get:@"http://news-at.zhihu.com/api/7/activity" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
//    
//    //@"CkI1O4mkKy2A/6lupLx4F8v9offsjOcEEp7sd+j1d5Y8Rs198c7FeVlsS/OGOwk/"
//    [AFNTool get:@"http://news-at.zhihu.com/api/7/anonymous-login" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
//    
//    [AFNTool get:@"https://news-at.zhihu.com/api/7/themes" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
//    
//    [AFNTool get:@"http://news-at.zhihu.com/api/7/version/ios/2.6.4?client=0" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
//    
//    [AFNTool get:@"https://news-at.zhihu.com/api/7/notifications/count" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
//    
//    [AFNTool get:@"https://news-at.zhihu.com/api/7/account" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
    
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
//    [dic setValue:[NSDate date] forKey:@"date"];
//    [dic setValue:@"Ygb-3jh0TFOh7AXvbImf8A" forKey:@"access_token"];
//    [AFNTool get:@"https://news-at.zhihu.com/api/7/stories/latest?client=0" params:[NSDictionary dictionaryWithDictionary:dic] success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
    
    //https://status.zhihu.com/api/daily/ios/2.6.4/201606211610
    [AFNTool get:@"https://status.zhihu.com/api/daily/ios/2.6.4/201606211610" params:nil success:^(id json) {
        GSLog_INFO(@"");
    } failure:^(NSError *error) {
        GSLog_ERROR(@"");
    }];

    //最新接口需要用户认证，然未破解认证过程
    [AFNTool get:@"http://news-at.zhihu.com/api/4/news/latest" params:nil success:^(id json) {
        GSLog_INFO(@"");
        LatestSectionModel *model = [LatestSectionModel mj_objectWithKeyValues:json];
        GSLog_INFO(@"");
    } failure:^(NSError *error) {
        GSLog_ERROR(@"");
    }];
}

@end
