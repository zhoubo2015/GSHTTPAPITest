//
//  ZHNewsDetailViewController.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "ZHNewsDetailViewController.h"
#import "ZHDataController.h"

@interface ZHNewsDetailViewController ()
<
UIWebViewDelegate
>
{
    UIWebView *articleWebView;
}

@end

@implementation ZHNewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    articleWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    articleWebView.delegate = self;
    [self.view addSubview:articleWebView];
    
    [articleWebView loadHTMLString:self.detailStory.htmlUrl baseURL:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark -- webview delegate
//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
//- (void)webViewDidStartLoad:(UIWebView *)webView;
//- (void)webViewDidFinishLoad:(UIWebView *)webView;
//- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error;

@end
