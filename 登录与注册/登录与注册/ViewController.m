//
//  ViewController.m
//  登录与注册
//
//  Created by 杨帆 on 2018/11/3.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;
- (IBAction)regis:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)login:(id)sender {
    
    [self.password resignFirstResponder];
    
    NSString *nameText = self.username.text;
    NSString *pwdText = self.password.text;
    
    NSLog(@"用户名位：%@， 密码为：%@", nameText, pwdText);
    
    if ([nameText isEqualToString:@"admin"] && [pwdText isEqualToString:@"123456"]) {
        NSLog(@"用户合法");
    }
    else{
        
        NSLog(@"用户不合法");
    }
}

- (IBAction)regis:(id)sender {
    
    NSLog(@"新用户，请注册");
}
@end
