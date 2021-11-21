//
//  ViewController.m
//  UIScrollView-喜马拉雅
//
//  Created by 杨帆 on 2018/11/8.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *lastImg;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat y =  CGRectGetMaxY(self.lastImg.frame);
    
    self.scrollView.contentSize = CGSizeMake(0, y + 20);
}


@end
