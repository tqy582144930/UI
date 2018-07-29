//
//  AppDelegate.m
//  UITabBarController
//
//  Created by tuqiangyao on 2018/7/23.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarController.h"
#import "VCRoot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];//
    
    UITabBarController* tab = [[UITabBarController alloc] init];
    self.window.rootViewController = tab;
    [self.window makeKeyWindow];
    
    VCRoot *c1=[[VCRoot alloc]init];
    c1.view.backgroundColor=[UIColor grayColor];
    c1.view.backgroundColor=[UIColor greenColor];
    c1.tabBarItem.title=@"消息";
    //c1.tabBarItem.image=[UIImage imageNamed:@"tab_recent_nor"];
    c1.tabBarItem.badgeValue=@"123";

    VCRoot *c2=[[VCRoot alloc]init];
    c2.view.backgroundColor=[UIColor brownColor];
    c2.tabBarItem.title=@"联系人";
    //c2.tabBarItem.image=[UIImage imageNamed:@"tab_buddy_nor"];

    VCRoot *c3=[[VCRoot alloc]init];
    c3.tabBarItem.title=@"动态";
    //c3.tabBarItem.image=[UIImage imageNamed:@"tab_qworld_nor"];

    VCRoot *c4=[[VCRoot alloc]init];
    c4.tabBarItem.title=@"设置";
    //c4.tabBarItem.image=[UIImage imageNamed:@"tab_me_nor"];
    
    VCRoot* root = [[VCRoot alloc] init];
    UINavigationController* nav= [[UINavigationController alloc] initWithRootViewController:c1];
    tab.viewControllers=@[nav,c2,c3,c4];
    
    
    

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
