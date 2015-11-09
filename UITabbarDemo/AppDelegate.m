//
//  AppDelegate.m
//  UITabbarDemo
//
//  Created by Lynch Wong on 11/6/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

#import "AppDelegate.h"
#import "YKTabbarViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FivthViewController.h"
#import "YKTabBar.h"
#import "YKNavigationViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) YKTabbarViewController *tabbarController;

@property (nonatomic, strong) YKNavigationViewController *firstViewController;
@property (nonatomic, strong) YKNavigationViewController *secondViewController;
@property (nonatomic, strong) YKNavigationViewController *thirdViewController;
@property (nonatomic, strong) YKNavigationViewController *fourthViewController;
@property (nonatomic, strong) YKNavigationViewController *fivthViewController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //导航栏背景
    [UINavigationBar appearance].barTintColor = [UIColor colorWithRed:77.0f/255.0f green:185.0/255.0f blue:237.0/255.0f alpha:1.0f];
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    _tabbarController = [[YKTabbarViewController alloc] init];
    _tabbarController.viewControllers = [self getTabbarViewControllers];
    
    _window.rootViewController = _tabbarController;
    [_window makeKeyAndVisible];
    
    return YES;
}

- (NSArray *)getTabbarViewControllers {
    _firstViewController = [[YKNavigationViewController alloc] initWithRootViewController:[[ViewController alloc] init]];
    _secondViewController = [[YKNavigationViewController alloc] initWithRootViewController:[[SecondViewController alloc] init]];
    _thirdViewController = [[YKNavigationViewController alloc] initWithRootViewController:[[ThirdViewController alloc] init]];
    _fourthViewController = [[YKNavigationViewController alloc] initWithRootViewController:[[FourthViewController alloc] init]];
    _fivthViewController = [[YKNavigationViewController alloc] initWithRootViewController:[[FivthViewController alloc] init]];
    return @[_firstViewController, _secondViewController, _thirdViewController, _fourthViewController, _fivthViewController];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
