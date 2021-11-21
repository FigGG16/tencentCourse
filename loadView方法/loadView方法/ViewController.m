//
//  ViewController.m
//  loadView方法
//
//  Created by 杨帆 on 2018/11/15.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//必须在此方法中完成view的设置
-(void)loadView{
    
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //访问self.view的时候就会去调用loadView方法
    self.view.backgroundColor = [UIColor purpleColor];
    
    NSLog(@"viewDidLoad");
}


@end
