//
//  MSAppDelegate.m
//  MSAlipaySDK
//
//  Created by wanghuizhou21@163.com on 07/13/2018.
//  Copyright (c) 2018 wanghuizhou21@163.com. All rights reserved.
//

#import "MSAppDelegate.h"
#import <MSAlipaySDK/MSAlipayHelper.h>

@implementation MSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if ([url.host isEqualToString:@"safepay"]) {
        //跳转支付宝钱包进行支付，处理支付结果
        [[MSAlipayHelper defaultManager] aliPayHandlerResultURL:url standbyCallback:^(NSDictionary *resultDic) {
            NSLog(@"application--->>result = %@",resultDic);
        }];

    }
    return YES;
}

// ios9
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    /*
     url.host:safepay
     alisdkdemo://safepay/?%7B%22memo%22:%7B%22result%22:%22%22,%22ResultStatus%22:%226001%22,%22memo%22:%22%E7%94%A8%E6%88%B7%E4%B8%AD%E9%80%94%E5%8F%96%E6%B6%88%22%7D,%22requestType%22:%22safepay%22%7D
     */
    if ([url.host isEqualToString:@"safepay"]) {
        // 支付跳转支付宝钱包进行支付，处理支付结果
        [[MSAlipayHelper defaultManager] aliPayHandlerResultURL:url standbyCallback:^(NSDictionary *resultDic) {
            NSLog(@"application--->>result = result = %@",resultDic);
        }];
    }
    return YES;
}

@end
