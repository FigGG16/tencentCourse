//
//  ViewController.m
//  UIProgress的使用
//
//  Created by 杨帆 on 2018/11/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //UIView动画
    [UIView animateWithDuration:3.0 animations:^{
        
        [self.progressView setProgress:1.0 animated:YES];
        
    }];
}


@end
