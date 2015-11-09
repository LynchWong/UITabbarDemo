//
//  PushedViewController.m
//  UITabbarDemo
//
//  Created by Lynch Wong on 11/9/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

#import "PushedViewController.h"
#import "HeHeViewController.h"

@interface PushedViewController ()

@end

@implementation PushedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)pushAction:(UIButton *)sender {
    HeHeViewController *view = [[HeHeViewController alloc] init];
    [self.navigationController pushViewController:view animated:YES];
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
