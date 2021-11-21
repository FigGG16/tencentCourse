//
//  ViewController.m
//  数据存储的目录
//
//  Created by 杨帆 on 2018/12/11.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *path =  [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    
    NSLog(@"%@", path);
    
    //沙盒入口
    NSLog(@"%@", NSHomeDirectory());
    
    //tmp
    NSLog(@"%@", NSTemporaryDirectory());
    
    //1.拼接
    NSString *doc = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    
    NSLog(@"%@",doc);
    
    //2.函数访问
    NSString *docDir =  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
    NSLog(@"%@", docDir);
    
    NSString *libDir = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@", libDir);
    
    NSString *cachesDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"%@", cachesDir);
}


@end
