//
//  LaunchAnimationView.m
//  GSZhiHuAPITest
//
//  Created by ZhouDamon on 16/1/19.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "LaunchAnimationView.h"
#import "LaunchView.h"
#import "GetLaunchDataInfo.h"

@interface LaunchAnimationView ()
{
    GetLaunchDataInfo *dataController;
    CustomLaunch *viewModel;
}

@end

@implementation LaunchAnimationView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dataController = [[GetLaunchDataInfo alloc] init];
    [dataController updateLanchView:^(NSDictionary *imageDic) {
        viewModel = [[CustomLaunch alloc] initWithImageDic:imageDic Delegate:self];
//        viewModel.touchDelegate = self;
    }];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    GSLog_INFO();
}

#pragma mark -- delegate
- (void)SendTouchEvent:(id)sender
{
    GSLog_INFO(@"%@", sender);
    [self.view removeFromSuperview];
}

- (void)addLaunchSubView:(id)view
{
    GSLog_INFO(@"%@", view);
    [self.view addSubview:view];
}

@end
