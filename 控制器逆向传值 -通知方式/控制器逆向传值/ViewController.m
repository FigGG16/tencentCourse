//
//  ViewController.m
//  控制器逆向传值
//
//  Created by 杨帆 on 2018/11/21.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlerNoti:) name:@"abc" object:nil];
}


-(void)handlerNoti:(NSNotification *)noti{
    
    NSDictionary *userInfo = noti.userInfo;
    
    self.resultLb.text = userInfo[@"info"];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    SecViewController *secVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"abc"];
    
    [self presentViewController:secVC animated:YES completion:nil];
    
}


@end
