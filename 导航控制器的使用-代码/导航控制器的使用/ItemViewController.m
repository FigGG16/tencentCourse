//
//  ItemViewController.m
//  导航控制器的使用
//
//  Created by 杨帆 on 2018/11/26.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ItemViewController.h"
#import "DetailViewController.h"

@interface ItemViewController ()

@end

@implementation ItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"项目";
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:@"详情" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    
    self.navigationItem.rightBarButtonItem = right;
}
    
    
    
-(void)rightClick:(UIBarButtonItem *)right{
    
    DetailViewController *detailVC = [[DetailViewController alloc]init];
    
    [self.navigationController pushViewController:detailVC animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
