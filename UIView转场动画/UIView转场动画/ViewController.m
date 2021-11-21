//
//  ViewController.m
//  UIView转场动画
//
//  Created by 杨帆 on 2019/1/8.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic)  UIView *orangeView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *orangeView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    orangeView.backgroundColor = UIColor.orangeColor;
    
    //[self.view addSubview:orangeView];
    
    self.orangeView = orangeView;
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    /**
     [UIView transitionWithView:self.view duration:2.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
     
     
     //        UIView *orangeView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
     //
     //        orangeView.backgroundColor = UIColor.orangeColor;
     //
     //        [self.redView addSubview:orangeView];
     
     UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
     
     btn.tag = 100;
     
     [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
     
     [self.redView addSubview:btn];
     
     
     } completion:nil];
     */
    
    [UIView transitionFromView:self.redView toView:self.orangeView duration:2.0 options:UIViewAnimationOptionTransitionCurlDown completion:nil];

}

/**
-(void)btnClick{
    
    [UIView transitionWithView:self.view duration:2.0 options:UIViewAnimationOptionTransitionCurlUp animations:^{
        
        UIButton *btn = [self.redView viewWithTag:100];
        
        [btn removeFromSuperview];
        
        
    } completion:nil];
    
}
*/

@end
