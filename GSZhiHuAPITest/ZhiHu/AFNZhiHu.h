//
//  AFNZhiHu.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/6.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFNZhiHu : NSObject

+ (void)getDetailStoryWithStoryId:(NSNumber *)storyId Callback:(void (^)(id json))callBack;

@end
