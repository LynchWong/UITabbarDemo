//
//  ViewController.m
//  UITabbarDemo
//
//  Created by Lynch Wong on 11/6/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

#import "ViewController.h"
#import "PushedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *noticeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    noticeButton.frame = CGRectMake(0, 0, 30, 30);
    [noticeButton setImage:[UIImage imageNamed:@"notice"] forState:UIControlStateNormal];
    [noticeButton addTarget:self action:@selector(noticeAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:noticeButton];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)noticeAction:(UIButton *)sender {
    
}

- (void)pushAction:(UIButton *)sender {
    PushedViewController *view = [[PushedViewController alloc] init];
    view.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:view animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
