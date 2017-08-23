//
//  ZCHomeViewController.m
//  Youke
//
//  Created by zcsx on 2017/8/22.
//  Copyright © 2017年 zcsx. All rights reserved.
//

#import "ZCHomeViewController.h"
#import "AppDelegate.h"

@interface ZCHomeViewController ()

@end

@implementation ZCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *navBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 20)];
    [navBtn setTitle:@"点我~" forState:UIControlStateNormal];
    [navBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [navBtn addTarget:self action:@selector(didNavBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:navBtn];
    
}

- (void)didNavBtnClick{
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.LeftSlideVC.closed)
    {
        [tempAppDelegate.LeftSlideVC openLeftView];
    }
    else
    {
        [tempAppDelegate.LeftSlideVC closeLeftView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
