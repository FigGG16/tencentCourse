//
//  ViewController.m
//  UITabBar的使用
//
//  Created by 杨帆 on 2018/12/3.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITabBarDelegate>

@property (weak, nonatomic) IBOutlet UITabBar *tabBar;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tabBar.barTintColor = [UIColor blueColor];
    
    //34 172 37
    self.tabBar.tintColor = [UIColor colorWithRed:34/255.0 green:172/255.0 blue:37/255.0 alpha:1.0];
    
    self.tabBar.items[0].badgeValue = @"100";
    
    self.tabBar.items[1].badgeColor = [UIColor blackColor];
    
    self.tabBar.selectedItem = self.tabBar.items[2];

}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    NSLog(@"%@", item.title);
    NSLog(@"%@", item.badgeValue);
    
    item.badgeValue = nil;
    
}


@end
