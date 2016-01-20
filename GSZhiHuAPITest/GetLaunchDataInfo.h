//
//  GetLaunchDataInfo.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"

@interface GetLaunchDataInfo : NSObject

- (void)updateLanchView:(void (^)(NSDictionary *imageDic))callback;

@end
