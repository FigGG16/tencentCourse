//
//  ViewController.m
//  UILabel的使用
//
//  Created by 杨帆 on 2018/11/3.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 120, 200)];
    
    label.text = @"Hello iOS UILabel \n Hello iOS UILabel \n Hello iOS UILabel";
    
    label.font = [UIFont systemFontOfSize:20];
    
    label.textColor = [UIColor blueColor];
    
    label.numberOfLines = 0;
    
    [self.view addSubview:label];
}


@end
