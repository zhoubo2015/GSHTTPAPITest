//
//  LaunchView.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UIEventDelegate <NSObject>

@required
- (void)SendTouchEvent:(id)sender;

@end

@interface LaunchView : UIView

@property (nonatomic, weak)id<UIEventDelegate>delegate;

- (id)initWithImage:(UIImage *)image;

@end
