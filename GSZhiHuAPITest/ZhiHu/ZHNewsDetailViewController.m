//
//  ZHNewsDetailViewController.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/7/5.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "ZHNewsDetailViewController.h"
#import "ZHDataController.h"
#import "DetailStoryTopViewModel.h"
#import "DetailStoryTopView.h"

@interface ZHNewsDetailViewController ()
<
UIWebViewDelegate
>
{
    UIWebView *articleWebView;
//    DetailStoryTopViewModel *topViewModel;
    DetailStoryTopView * topView;
}

@end

@implementation ZHNewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    articleWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    articleWebView.delegate = self;
    [self.view addSubview:articleWebView];
    
    [articleWebView loadHTMLString:self.detailStory.htmlUrl baseURL:nil];
    
    topView = [[DetailStoryTopView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 320)];
    DetailStoryTopViewModel *topViewModel = [[DetailStoryTopViewModel alloc] initWithDetailStory:self.detailStory];
    [topView bindDataWithViewModel:topViewModel];
    
    [self.view addSubview:topView];
    
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
