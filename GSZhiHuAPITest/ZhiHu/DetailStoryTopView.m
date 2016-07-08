//
//  DetailStoryTopView.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/7.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "DetailStoryTopView.h"
#import "DetailStoryTopViewModel.h"

#import "UIImageView+WebCache.h"

@implementation DetailStoryTopView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    
    return self;
}

- (void)initView
{
    self.topImageView = [[UIImageView alloc] initWithFrame:self.bounds];
    self.topImageView.backgroundColor = [UIColor clearColor];
    [self addSubview:self.topImageView];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.textColor = [UIColor whiteColor];
    [self addSubview:self.titleLabel];
    
//    self.topImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self).offset(20);
        make.leading.equalTo(self).offset(20);
        make.size.mas_equalTo(CGSizeMake(self.bounds.size.width, 100));
    }];
}

- (void)bindDataWithViewModel:(nonnull DetailStoryTopViewModel *)viewModel
{
    [self.topImageView sd_setImageWithURL:[NSURL URLWithString:viewModel.story.image]];
}

@end
