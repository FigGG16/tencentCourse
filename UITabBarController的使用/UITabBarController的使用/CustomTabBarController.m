//
//  CustomTabBarController.m
//  UITabBarController的使用
//
//  Created by 杨帆 on 2018/12/3.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "CustomTabBarController.h"

@interface CustomTabBarController () <UITabBarControllerDelegate>

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    //item.badgeValue = nil;
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    
    viewController.tabBarItem.badgeValue = nil;
    
    viewController.view.backgroundColor = [UIColor purpleColor];
}

@end
