//
//  LaunchView.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "LaunchView.h"

@implementation LaunchView

- (id)init
{
    self = [super init];
    if (self) {
        //init
//        self.backgroundColor = [UIColor redColor];
        self.userInteractionEnabled = YES;
    }

    return self;
}

- (id)initWithImage:(UIImage *)image
{
    self = [self initWithFrame:[UIScreen mainScreen].bounds];
    if (self) {
        self.userInteractionEnabled = YES;
        
        UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = self.frame;
        [self addSubview:imageView];
        
        UIButton *skipButton = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width - 110.f, 20.f, 100.f, 44.f)];
        [skipButton setTitle:@"跳过" forState:UIControlStateNormal];
        [skipButton setBackgroundColor:[UIColor grayColor]];
        [skipButton addTarget:self action:@selector(skipButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:skipButton];
    }
    return self;
}

- (void)dealloc
{
    GSLog_INFO(@"%s", __FUNCTION__);
}

#pragma mark -- touch 
- (void)skipButtonTouched:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(SendTouchEvent:)]) {
        [self.delegate SendTouchEvent:sender];
    }
}

@end
