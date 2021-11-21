//
//  ViewController.m
//  UIView动画-登录案例
//
//  Created by 杨帆 on 2019/1/3.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIImageView *pinWheel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)pinWheelRotate{
    
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        
        self.pinWheel.transform = CGAffineTransformRotate(self.pinWheel.transform, M_PI_2);
        
    } completion:^(BOOL finished) {
        
        [self pinWheelRotate];
        
    }];
    
    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    
    [self pinWheelRotate];
    
    [UIView animateWithDuration:3.0 animations:^{
        
        self.usernameTF.center = CGPointMake(self.view.center.x, self.usernameTF.center.y);
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:3.0 animations:^{
            
            self.passwordTF.center = CGPointMake(self.view.center.x, self.passwordTF.center.y);
            
        } completion:^(BOOL finished) {
            
            
//            [UIView animateWithDuration:3.0 animations:^{
//
//                self.loginBtn.center =  CGPointMake(self.view.center.x, 360);
//            }];
            
            [UIView animateWithDuration:3.0 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                
                self.loginBtn.center =  CGPointMake(self.view.center.x, 360);
                
            } completion:nil];
            
            
        }];
        
    }];
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

}


@end
