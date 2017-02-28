//
//  AppDelegate.m
//  Hypnosister
//
//  Created by 路丽菲 on 17/2/20.
//  Copyright © 2017年 路丽菲. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    
//    // 创建两个CGRect结构分别作为UIScrollView对象和BNRHypnosisView对象的frame
//    CGRect screenRect = self.window.bounds;
//    CGRect bigRect = screenRect;
//    bigRect.size.width *= 2.0;
//    bigRect.size.height *= 2.0;
//    
//    // 创建一个UIScrollView对象，将其尺寸设置为窗口大小
//    UIScrollView * scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
//    [self.window addSubview:scrollView];
//    // 创建一个有着超大尺寸的BNRHypnosisView对象并将其加入UIScrollView对象
//    BNRHypnosisView * hypnosisView = [[BNRHypnosisView alloc]initWithFrame:bigRect];
//    [scrollView addSubview:hypnosisView];
//    // 告诉UIScrollView对象"取景"范围有多大
//    scrollView.contentSize = bigRect.size;
//    self.window.backgroundColor = [UIColor whiteColor];
//    

    
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
