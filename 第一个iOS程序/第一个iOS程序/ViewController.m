//
//  ViewController.m
//  第一个iOS程序
//
//  Created by 杨帆 on 2018/11/1.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *view4;
- (IBAction)click2:(id)sender;

@end


//IBOutlet IBAction
//视图控制器是管理UIView
//ViewController里面会有一个UIView（与屏幕一样大）
@implementation ViewController


//UIView被UIViewController加载到内存中的时候
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    //CGPoint 点（x，y）
    //CGSize 宽高(width, height)
    //CGRect 矩形(起始坐标，宽高)
    
    UIView *view = [[UIView alloc]init];
    
    view.frame = CGRectMake(100, 100, 100, 100);
    
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    
    UIView *view2 = [self.view viewWithTag:101];
    
    view2.backgroundColor = [UIColor blackColor];
    
    view.center = self.view.center;
    
    
    self.view4.backgroundColor = [UIColor purpleColor];
  
}

//UIView即将显示出来
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

//UIView显示出来
-(void)viewDidAppear:(BOOL)animated{
    
    
}

//渲染的时候布局子控件
-(void)viewWillLayoutSubviews{
    
    
}

//完成子控件的布局
-(void)viewDidLayoutSubviews{
    
    
}

//UIView即将消失
-(void)viewWillDisappear:(BOOL)animated{
    
    
}

//UIView完全消失
- (void)viewDidDisappear:(BOOL)animated{
    

}

- (IBAction)click2:(id)sender {
    
    NSLog(@"按钮被点击了");
}

@end
