//
//  CustomViewController.m
//  导航控制器的使用
//
//  Created by 杨帆 on 2018/11/27.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    
    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    [super pushViewController:viewController animated:animated];
}

@end
