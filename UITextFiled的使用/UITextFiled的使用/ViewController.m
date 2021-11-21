//
//  ViewController.m
//  UITextFiled的使用
//
//  Created by 杨帆 on 2018/11/3.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)textChange:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *unametf;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)textChange:(id)sender {
    
    UITextField *tf = (UITextField *)sender;
    
    NSLog(@"%@", tf.text);
    
}

//触摸UIView就会调用该方法
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //结束编辑
    //[self.view endEditing:YES];
    
    //失去第一响应者
    [self.unametf resignFirstResponder];
    
}

@end
