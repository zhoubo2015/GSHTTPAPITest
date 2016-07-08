//
//  DetailStoryTopView.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/7.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailStoryTopViewModel;
@interface DetailStoryTopView : UIView

@property (nonnull, nonatomic, strong) UIImageView *topImageView;
@property (nonnull, nonatomic, strong) UILabel *titleLabel;
@property (nonnull, nonatomic, strong) UILabel *imageSourceLabel;

- (void)bindDataWithViewModel:(nonnull DetailStoryTopViewModel *)viewModel;

@end
