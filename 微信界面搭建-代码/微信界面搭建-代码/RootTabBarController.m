//
//  RootTabBarController.m
//  微信界面搭建-代码
//
//  Created by 杨帆 on 2018/12/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "RootTabBarController.h"
#import "WechatViewController.h"
#import "ContactsViewController.h"
#import "DiscoverViewController.h"
#import "MeViewController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addChlidWithVCName:@"WechatViewController" title:@"微信" image:@"tabbar_mainframe" selectedImage:@"tabbar_mainframeHL"];
    
    [self addChlidWithVCName:@"ContactsViewController" title:@"联系人" image:@"tabbar_contacts" selectedImage:@"tabbar_contactsHL"];
    
    [self addChlidWithVCName:@"DiscoverViewController" title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discoverHL"];
    
    [self addChlidWithVCName:@"MeViewController" title:@"我" image:@"tabbar_me" selectedImage:@"tabbar_meHL"];
    
}


-(void)addChlidWithVCName:(NSString *)vcName title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    
    //1.创建控制器
    Class class = NSClassFromString(vcName);
    
    UIViewController *wechat = [[class alloc]init];
    
    //2.设置属性
    wechat.navigationItem.title = title;
    
    wechat.tabBarItem.title = title;
    wechat.tabBarItem.image = [UIImage imageNamed:image];
    wechat.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    [wechat.tabBarItem setTitleTextAttributes:@{ NSForegroundColorAttributeName: [UIColor colorWithRed:34/255.0 green:172/255.0 blue:37/255.0 alpha:1.0]} forState:UIControlStateHighlighted];
    
    
    //3.创建导航控制器
    UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:wechat];
    nvc.navigationBar.barTintColor = [UIColor colorWithRed:15/255.0 green:15/255.0 blue:15/255.0 alpha:1.0];
    nvc.navigationBar.tintColor = [UIColor whiteColor];
    [nvc.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    //4.添加到标签栏控制器
    [self addChildViewController:nvc];
    
}

@end
