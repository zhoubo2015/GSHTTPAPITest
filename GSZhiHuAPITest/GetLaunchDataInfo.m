//
//  GetLaunchDataInfo.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "GetLaunchDataInfo.h"
#import "MJExtension.h"
#import "AFNTool.h"
#import "LaunchData.h"

@implementation GetLaunchDataInfo

- (void)updateLanchView:(void (^)(NSDictionary *imageDic))callback
{    
    [AFNTool get:@"http://news-at.zhihu.com/api/4/start-image/1080*1776" params:nil success:^(id json){
        
        GSLog_INFO(@"%@", json);
        LaunchData *data = [LaunchData mj_objectWithKeyValues:json];
        SDWebImageManager *manager = [SDWebImageManager sharedManager];
        NSMutableDictionary *imageDic = [[NSMutableDictionary alloc] init];
        
        for (NSInteger i = 0; i < 1; i++) {
            [manager downloadImageWithURL:[NSURL URLWithString:data.img] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
                
            } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
                if (YES == finished && nil == error) {
                    [imageDic setObject:image forKey:data.img];
                }
                
                if (0 < [imageDic.allValues count] && nil != callback) {
                    callback(imageDic);
                }
            }];
        }
        
//        if (0 < [imageDic.allValues count] && nil != callback) {
//            callback(imageDic);
//        }
    } failure:^(NSError *error){
    
    }];
}

@end
