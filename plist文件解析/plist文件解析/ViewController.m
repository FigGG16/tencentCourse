//
//  ViewController.m
//  plist文件解析
//
//  Created by 杨帆 on 2018/12/14.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSDictionary *dic =  [NSBundle mainBundle].infoDictionary;
//
//    NSLog(@"%@", dic);
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"user" ofType:@"plist"];
//
//    NSDictionary *user = [NSDictionary dictionaryWithContentsOfFile:path];
//
//    NSString *username = user[@"username"];
//
//    NSString *password = user[@"password"];
//
//    NSLog(@"username = %@, password = %@", username, password);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cityData.plist" ofType:nil];
    
    NSDictionary *cities = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSLog(@"%@", [[cities allKeys] firstObject]);
    
    NSArray *city = cities[[[cities allKeys] firstObject]];
    
    NSLog(@"%@", [city firstObject]);
    
    NSString *fileName = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:@"city.plist"
     ];
    
    [city writeToFile:fileName atomically:YES];
    
}


@end
