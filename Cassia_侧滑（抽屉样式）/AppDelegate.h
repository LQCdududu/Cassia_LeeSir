//
//  AppDelegate.h
//  LeftSlide
//
//  Created by huangzhenyu on 15/6/18.
//  Copyright (c) 2015年 eamon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"
#import "ZCTabBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) ZCTabBarViewController *rootTabBarController;
@property (strong, nonatomic) LeftSlideViewController *LeftSlideVC;
@property (strong, nonatomic) UINavigationController *mainNavigationController;

@end

