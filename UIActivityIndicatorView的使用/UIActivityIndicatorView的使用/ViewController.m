//
//  ViewController.m
//  UIActivityIndicatorView的使用
//
//  Created by 杨帆 on 2018/11/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *yellowIndicator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.yellowIndicator startAnimating];
    
    //延迟执行
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.indicator stopAnimating];
        
    });
}


@end
