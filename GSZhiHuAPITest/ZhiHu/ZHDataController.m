//
//  ZHDataController.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "ZHDataController.h"

#import "AFNTool.h"
#import "MJExtension.h"

#import "AFNZhiHu.h"

@implementation ZHDataController

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

#pragma mark -- public

- (void)initDataSource:(TableViewCellConfigureBlock)block
{
    self.dataSource = [[ZHDataSource alloc] initWithItems:nil cellIdentifier:@"latestNewsCell" configureCellBlock:block];
}

- (void)updateZhiHuDataLatestNews
{
    //最新接口需要用户认证，然未破解认证过程,使用旧版接口
    dispatch_async(dispatch_get_main_queue(), ^{
        [AFNTool get:@"http://news-at.zhihu.com/api/4/news/latest" params:nil success:^(id json) {
            GSLog_INFO(@"");
            NSMutableArray *array = [NSMutableArray new];
            LatestSectionModel *model = [LatestSectionModel mj_objectWithKeyValues:json];
            for (id item in model.stories) {
                StoryModel *story = [StoryModel mj_objectWithKeyValues:item];
                [array addObject:story];
            }
            self.dataSource.items = array;
            GSLog_INFO(@"");
            if (self.dataDelegate && [self.dataDelegate respondsToSelector:@selector(dataGetFinished)]) {
                [self.dataDelegate dataGetFinished];
            }
        }
        failure:^(NSError *error) {
            GSLog_ERROR(@"");
        }];
    });
}

- (void)updateDetailStory:(StoryModel *)story
{
    [AFNZhiHu getDetailStoryWithStoryId:story.id Callback:^(id json) {
        DetailStory *story = [DetailStory mj_objectWithKeyValues:json];
        story.htmlUrl = [NSString stringWithFormat:@"<html><head><link rel=\"stylesheet\" href=%@></head><body>%@</body></html>",story.css[0],story.body];
        
        if (self.dataDelegate && [self.dataDelegate respondsToSelector:@selector(outputHtmlUrl:)]) {
            [self.dataDelegate outputHtmlUrl:story];
        }
    }];
}

@end
