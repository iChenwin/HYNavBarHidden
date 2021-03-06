
//
//  TestViewController.m
//  自定义导航控制器
//
//  Created by HelloYeah on 16/3/12.
//  Copyright © 2016年 HelloYeah. All rights reserved.
//

#import "TestViewController.h"
#import "UIViewController+NavBarHidden.h"

@implementation TestViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    //设置当有导航栏自动添加64的高度的属性为NO
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self setKeyScrollView:self.tableView scrolOffsetY:600 options:HYHidenControlOptionLeft | HYHidenControlOptionTitle];
    //设置tableView的头部视图
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 0, 250)];
    imageView.image = [UIImage imageNamed:@"lol"];
    self.tableView.tableHeaderView = imageView;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"2.jpg"] forBarMetrics:UIBarMetricsDefault];

}




- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    [self setInViewWillAppear];
}

- (void)viewDidDisappear:(BOOL)animated{
    
    [super viewDidDisappear:animated];
    [self setInViewWillDisappear];
}

@end
