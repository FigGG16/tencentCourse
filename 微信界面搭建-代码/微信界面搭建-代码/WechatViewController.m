//
//  WechatViewController.m
//  微信界面搭建-代码
//
//  Created by 杨帆 on 2018/12/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "WechatViewController.h"

@interface WechatViewController ()

@end

@implementation WechatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    self.tabBarItem.badgeValue = @"11";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
