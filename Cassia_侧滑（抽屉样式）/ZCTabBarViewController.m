//
//  ZCTabBarViewController.m
//  ZhongCSX
//
//  Created by zcsx on 17/4/21.
//  Copyright © 2017年 zcsx. All rights reserved.
//

#import "ZCTabBarViewController.h"
#import "ZCMineViewController.h"
#import "ZCHomeViewController.h"
#import "ZCClassifyViewController.h"

@interface ZCTabBarViewController ()
@end

@implementation ZCTabBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    // 首页
    ZCHomeViewController *indexVc = [[ZCHomeViewController alloc]init];
    UINavigationController *oneNav = [[UINavigationController alloc]initWithRootViewController:indexVc];
    indexVc.title = @"首页";
    
    // 分类
    ZCClassifyViewController *streamVc = [[ZCClassifyViewController alloc] init];
    UINavigationController *twoNav = [[UINavigationController alloc]initWithRootViewController:streamVc];
    streamVc.title = @"分类";
 
    
    // 我的
    ZCMineViewController *mineVc = [[ZCMineViewController alloc]init];
    UINavigationController *threeNav = [[UINavigationController alloc]initWithRootViewController:mineVc];
    mineVc.title = @"我的";

    
    self.viewControllers = @[oneNav,twoNav,threeNav];
    [self setCustomTabBar];
}





#pragma mark
#pragma mark - 设置tabbar
- (void)setCustomTabBar{
    
    NSArray *tabBarItemImages = @[@"index",@"classification",@"personal"];
    NSArray *tabBarItemTitles = @[@"首页",@"分类",@"我的"];
    
    NSInteger index = 0;
    for (UITabBarItem *item in self.tabBar.items) {
        
        UIImage *unSeletedImg = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[tabBarItemImages objectAtIndex:index]]];
        UIImage *seletedImg = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:seletedImg withFinishedUnselectedImage:unSeletedImg];

        item.title = tabBarItemTitles[index];
        
        index++;
    }
}



@end
