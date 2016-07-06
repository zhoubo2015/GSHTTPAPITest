//
//  ZHDataController.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

/*
 http://blog.csdn.net/kinglearnjava/article/details/44173997
 */

#import <Foundation/Foundation.h>
#import "ZHDataSource.h"
#import "LatestSectionModel.h"
#import "DetailStory.h"

@protocol ZHDataProtocol <NSObject>

- (void)dataGetFinished;
- (void)outputHtmlUrl:(DetailStory *)story;

@end

@class ZHDataSource;
@interface ZHDataController : NSObject

@property (nonatomic, weak) id<ZHDataProtocol>dataDelegate;
@property (nonatomic, strong) ZHDataSource *dataSource;


- (void)initDataSource:(TableViewCellConfigureBlock)block;
- (void)updateZhiHuDataLatestNews;
- (void)updateDetailStory:(StoryModel *)story;

@end
