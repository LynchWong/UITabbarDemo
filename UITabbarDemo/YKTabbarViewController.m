//
//  YKTabbarViewController.m
//  UITabbarDemo
//
//  Created by Lynch Wong on 11/6/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

#import "YKTabbarViewController.h"
#import "YKTabBar.h"
#import "AppDelegate.h"

@interface YKTabbarViewController ()<YKTabBarDelegate>

@property (nonatomic, strong) UIButton *preSelectedButton;

@end

@implementation YKTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //去掉那条线
    self.tabBar.shadowImage = [UIImage imageNamed:@"TransparentPixel"];
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"Pixel"]];
    
    //去掉Tabbar原来的子视图
    CGRect rect = self.tabBar.bounds;
    for (UIView *view in self.tabBar.subviews) {
        [view removeFromSuperview];
        NSLog(@"removeFromSuperview : %@", [[view class] description]);
    }
    
    //添加我们自己的Tabbar
    YKTabBar *tabbar = [[[NSBundle mainBundle] loadNibNamed:@"YKTabBar" owner:nil options:nil] firstObject];
    tabbar.frame = rect;
    tabbar.delegate = self;
    [self.tabBar addSubview:tabbar];
    
    _preSelectedButton = tabbar.firstButton;
    _preSelectedButton.enabled = NO;
}

#pragma makr - YKTabBarDelegate

- (void)selectedViewController:(UIButton *)sender {
    if (sender == _preSelectedButton) {
        return;
    }
    NSLog(@"_preSelectedIndex : %d, index : %d", _preSelectedButton.tag, sender.tag);
    self.selectedIndex = sender.tag;
    sender.enabled = NO;
    _preSelectedButton.enabled = YES;
    _preSelectedButton = sender;
}

@end
