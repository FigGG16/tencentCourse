//
//  ViewController.m
//  认识导航控制器
//
//  Created by 杨帆 on 2018/11/23.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)takePhoto:(id)sender;
- (IBAction)leftBarItemClick:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.navigationItem.title = @"首页";
    
    UIImageView *imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MoreExpressionShops_25x25_"]];
    
    self.navigationItem.titleView = imgView;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:imgView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UIViewController * vc =  [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)takePhoto:(id)sender {
    
    NSLog(@"打开相机拍照片") ;
}

- (IBAction)leftBarItemClick:(id)sender {
    
    NSLog(@"查看表情");
}
@end
