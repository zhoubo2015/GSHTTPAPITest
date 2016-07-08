//
//  DetailStoryTopViewModel.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/7.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "DetailStoryTopViewModel.h"

@interface DetailStoryTopViewModel ()
{
    
}

@end

@implementation DetailStoryTopViewModel

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithDetailStory:(DetailStory *)story
{
    self = [super init];
    if (self) {
        self.story = story;
    }
    
    return self;
}

- (UIView *)getTopView
{
    
    return nil;
}

@end
