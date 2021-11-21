//
//  ViewController.m
//  控制器跳转-Modal
//
//  Created by 杨帆 on 2018/11/19.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "RedViewController.h"

@interface ViewController ()

- (IBAction)moveToRedVC:(id)sender;
- (IBAction)sugueMoveToRedVC:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)moveToRedVC:(id)sender {
    
    //1.初始化我们要跳转的控制器
    RedViewController *redVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"abc"];
    
    //2.完成跳转
    [self presentViewController:redVC animated:YES completion:nil];
}

- (IBAction)sugueMoveToRedVC:(id)sender {
    
    [self performSegueWithIdentifier:@"abcd" sender:nil];
}
@end
