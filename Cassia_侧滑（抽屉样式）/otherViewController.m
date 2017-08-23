//
//  otherViewController.m
//  LGDeckViewController
//
//  Created by huangzhenyu on 15/6/1.
//  Copyright (c) 2015年 Jamie-Ling. All rights reserved.
//

#import "otherViewController.h"

@interface otherViewController ()

@end

@implementation otherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"其他";
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = YES;
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
