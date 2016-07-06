//
//  DetailStory.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/6.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DetailStory : NSObject

/**body  HTML 格式的新闻*/
@property (nonatomic, copy) NSString *body;
/**image-source  图片的内容提供方*/
@property (nonatomic, copy) NSString *image_source;
/**title  新闻标题*/
@property (nonatomic, copy) NSString *title;
/**image  图片*/
@property (nonatomic, copy) NSString *image;
/**share_url  分享至 SNS 用的 URL*/
@property (nonatomic, copy) NSString *share_url;
/**recommenders  这篇文章的推荐者*/
@property (nonatomic,copy) NSString *recommenders;
/**id  新闻的 id*/
@property (nonatomic, strong) NSNumber *id;
/**css  供手机端的 WebView(UIWebView) 使用*/
@property (nonatomic, strong) NSArray *css;
/**html  供手机端的 WebView(UIWebView) 使用*/
@property (nonatomic, copy) NSString *htmlUrl;

@end
