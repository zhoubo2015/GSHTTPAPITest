//
//  ZHNewsDetailViewController.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "ZHNewsDetailViewController.h"

@interface ZHNewsDetailViewController ()
{
    UIWebView *articleWebView;
}

@end

@implementation ZHNewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    articleWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:articleWebView];
    
    [articleWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlStr]]];
}

@end
