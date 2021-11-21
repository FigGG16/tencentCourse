//
//  ViewController.m
//  导航控制器的使用
//
//  Created by 杨帆 on 2018/11/25.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "ListViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:@"列表" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    
    self.navigationItem.rightBarButtonItem = right;
}


    
-(void)rightClick:(UIBarButtonItem *)right{
        
    ListViewController *listVC = [[ListViewController alloc]init];
    
    [self.navigationController pushViewController:listVC animated:YES];
    
}
@end
