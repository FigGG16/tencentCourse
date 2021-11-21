//
//  ViewController.m
//  认识UIView动画
//
//  Created by 杨帆 on 2019/1/3.
//  Copyright © 2019 ABC. All rights reserved.

//支持的属性
//@property frame
//@property bounds
//@property center
//@property transform
//@property alpha
//@property backgroundColor

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,  strong) UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *orangeView;
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *blackView;
@property (weak, nonatomic) IBOutlet UIImageView *pinWheel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.redView];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
     /**
    [UIView animateWithDuration:3 animations:^{
        
        self.redView.frame = CGRectMake(300, 300, 50, 50);
        
        self.redView.center = CGPointMake(300, 300);
        
    }];
      */
    
    /**
    [UIView animateWithDuration:3.0 animations:^{
        
        self.redView.backgroundColor = [UIColor blueColor];
        
        NSLog(@"等待完成");
        
    } completion:^(BOOL finished) {
        
        self.redView.backgroundColor = [UIColor redColor];
        
    }];
     */
    /**
    [UIView animateWithDuration:3.0 delay:1.0 options:UIViewAnimationOptionCurveLinear animations:^{
        
        
        self.redView.alpha = 0.5;
        
    } completion:nil];
     */
    
    /**
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveEaseInOut  animations:^{
        
        self.orangeView.center = CGPointMake(350, self.orangeView.center.y);
        
    } completion:nil];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.greenView.center = CGPointMake(350, self.greenView.center.y);
        
    } completion:nil];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveEaseOut  animations:^{
        
        self.blueView.center = CGPointMake(350, self.blueView.center.y);
        
    } completion:nil];
    
    [UIView animateWithDuration:3.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        
        self.blackView.center = CGPointMake(350, self.blackView.center.y);
        
    } completion:nil];
    
     */
    
    /**
    
    [UIView animateWithDuration:3.0 animations:^{
        
        //Translation
        //self.pinWheel.transform = CGAffineTransformMakeTranslation(-100, -100);
        
        //self.pinWheel.transform = CGAffineTransformTranslate(self.pinWheel.transform, 30, 30);
        
        //Scale
        //self.pinWheel.transform = CGAffineTransformMakeScale(0.5, 0.5);
        //self.pinWheel.transform = CGAffineTransformScale(self.pinWheel.transform,0.5, 0.5);
        
        //Rotation
        //self.pinWheel.transform = CGAffineTransformMakeRotation(M_PI_2);
        
        self.pinWheel.transform = CGAffineTransformRotate(self.pinWheel.transform, M_PI_2);
        
    } completion:nil];
     
     */
    
    [UIView animateWithDuration:3.0 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
        
        self.redView.center = self.view.center;
        
    } completion:nil];
    
}


@end
