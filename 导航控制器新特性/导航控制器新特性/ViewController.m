//
//  ViewController.m
//  导航控制器新特性
//
//  Created by 杨帆 on 2018/12/3.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.navigationController.hidesBarsOnTap = YES;
    
    //self.navigationController.hidesBarsOnSwipe = YES;
    
    //self.navigationController.hidesBarsWhenKeyboardAppears = YES;
    
    self.navigationController.hidesBarsWhenVerticallyCompact = YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

@end
