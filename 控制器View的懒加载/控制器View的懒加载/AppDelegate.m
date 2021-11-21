//
//  AppDelegate.m
//  控制器View的懒加载
//
//  Created by 杨帆 on 2018/11/15.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

    NSLog(@"%s", __func__);
    
    //1.创建一个现实的UIWindowm，大小与屏幕一样
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //2.创建一个显示的控制器
    ViewController *vc = [[ViewController alloc]init];
    
    
    if([vc isViewLoaded]){
        
        vc.view.backgroundColor = [UIColor blueColor];
    }
    
    vc.view.backgroundColor = [UIColor redColor];
    
    if([vc isViewLoaded]){
        
        vc.view.backgroundColor = [UIColor greenColor];
    }
   

    //3.将控制器与window画关联
    self.window.rootViewController = vc;
    
    //4. 将window现实出来
    [self.window makeKeyAndVisible];
    
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
