//
//  YKTabBar.h
//  UITabbarDemo
//
//  Created by Lynch Wong on 11/6/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YKTabBarDelegate <NSObject>

- (void)selectedViewController:(UIButton *)sender;

@end

@interface YKTabBar : UIView

@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;
@property (weak, nonatomic) IBOutlet UIButton *fourthButton;
@property (weak, nonatomic) IBOutlet UIButton *fivthButton;

@property (nonatomic, weak) id<YKTabBarDelegate> delegate;

@end
