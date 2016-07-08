//
//  DetailStoryTopViewModel.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/7.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailStory.h"

@interface DetailStoryTopViewModel : NSObject

@property (nonatomic, strong) DetailStory *story;


- (id)initWithDetailStory:(DetailStory *)story;

@end
