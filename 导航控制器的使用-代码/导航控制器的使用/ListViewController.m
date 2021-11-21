//
//  ListViewController.m
//  导航控制器的使用
//
//  Created by 杨帆 on 2018/11/26.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ListViewController.h"
#import "ItemViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"列表";
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:@"项目" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    
    self.navigationItem.rightBarButtonItem = right;
    
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftArrow"] style:UIBarButtonItemStylePlain target:self action:@selector(leftClick:)];
    
    //self.navigationItem.leftBarButtonItem = left;
    
}
    
    
    
-(void)rightClick:(UIBarButtonItem *)right{
    
    ItemViewController *itemVC = [[ItemViewController alloc]init];
    
    [self.navigationController pushViewController:itemVC animated:YES];
    
}
    
-(void)leftClick:(UIBarButtonItem *)right{
    
    [self.navigationController popViewControllerAnimated:YES];
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
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
