//
//  ViewController.m
//  XIB加载View的尺寸
//
//  Created by 杨帆 on 2018/11/26.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"Custom" owner:self options:nil] firstObject];
    
    view.frame = CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 200);
    
    [self.view addSubview:view];
}


@end
