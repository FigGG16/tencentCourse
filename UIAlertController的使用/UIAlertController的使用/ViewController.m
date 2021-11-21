//
//  ViewController.m
//  UIAlertController的使用
//
//  Created by 杨帆 on 2018/11/19.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)showAlert:(id)sender;
- (IBAction)showActionSheet:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showAlert:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"天气变冷，注意防寒" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了OK");
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
         NSLog(@"点击了Cancel");
    }];
    
    [alert addAction:ok];
    
    [alert addAction:cancel];
    
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)showActionSheet:(id)sender {
    
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"设置头像" message:@"选择方式" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *one = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *two = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *three = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [actionSheet addAction:one];
    
    [actionSheet addAction:two];
    
    [actionSheet addAction:three];
    
    [self presentViewController:actionSheet animated:YES completion:nil];
}
@end
