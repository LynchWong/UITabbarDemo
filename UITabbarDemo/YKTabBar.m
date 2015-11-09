//
//  YKTabBar.m
//  UITabbarDemo
//
//  Created by Lynch Wong on 11/6/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

#import "YKTabBar.h"

#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

#define kRadio kScreenWidth / 375.0f

@interface YKTabBar ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *firstMarginConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondMarginConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *thirdMarginConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lastMarginConstraint;

@end

@implementation YKTabBar

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"awakeFromNib");
    _firstMarginConstraint.constant *= kRadio;
    _secondMarginConstraint.constant *= kRadio;
    _thirdMarginConstraint.constant *= kRadio;
    _lastMarginConstraint.constant *= kRadio;
}

- (IBAction)selectViewController:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(selectedViewController:)]) {
        [_delegate selectedViewController:sender];
    }
}

@end
