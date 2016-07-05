//
//  ZHMainViewController.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/6/27.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "ZHMainViewController.h"
#import "ZHDataController.h"
#import "ZHDataSource.h"

#import "ZHNewsDetailViewController.h"

@interface ZHMainViewController ()
<
UITableViewDelegate,
ZHDataProtocol
>
{
    ZHDataController *dataController;
    UITableView *latestTableView;
    
    
}

@end

@implementation ZHMainViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor grayColor];
    self.title = GSLocalizedString(@"zhihu_title", nil);
    
    [self initDataController];
    [self initTableView];
    
    
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
    
//    //https://status.zhihu.com/api/daily/ios/2.6.4/201606211610
//    [AFNTool get:@"https://status.zhihu.com/api/daily/ios/2.6.4/201606211610" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
//
//    //最新接口需要用户认证，然未破解认证过程
//    [AFNTool get:@"http://news-at.zhihu.com/api/4/news/latest" params:nil success:^(id json) {
//        GSLog_INFO(@"");
//        LatestSectionModel *model = [LatestSectionModel mj_objectWithKeyValues:json];
//        GSLog_INFO(@"");
//    } failure:^(NSError *error) {
//        GSLog_ERROR(@"");
//    }];
}


- (void)initTableView
{
    latestTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    latestTableView.dataSource = dataController.dataSource;
    latestTableView.delegate = self;
    [self.view addSubview:latestTableView];
    
    [dataController updateZhiHuDataLatestNews];
}

- (void)initDataController
{
    dataController = [[ZHDataController alloc] init];
    dataController.dataDelegate = self;
    [dataController initDataSource:^(id cell, id item) {
        if ([cell isKindOfClass:[UITableViewCell class]]) {
            UITableViewCell *tableCell = (UITableViewCell *)cell;
            if ([item isKindOfClass:[StoryModel class]]) {
                StoryModel *story = (StoryModel *)item;
                tableCell.textLabel.text = story.title;
            }
        }
    }];
//    [dataController updateZhiHuDataLatestNews];
}

#pragma mark -- uitableview delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    GSLog_INFO(@"");
    if (dataController.dataSource) {
        id item = [dataController.dataSource itemAtIndexPath:indexPath];
        if ([item isKindOfClass:[StoryModel class]]) {
            StoryModel *story = (StoryModel *)item;
            //http://news-at.zhihu.com/api/4/news/3892357
            ZHNewsDetailViewController *article = [[ZHNewsDetailViewController alloc] init];
            article.urlStr = [NSString stringWithFormat:@"http://news-at.zhihu.com/api/4/news/%d", [story.id intValue]];
            [self.navigationController pushViewController:article animated:YES];
        }
    }
}

#pragma mark -- ZHDataProtocol
- (void)dataGetFinished
{
    [latestTableView reloadData];
}

@end
