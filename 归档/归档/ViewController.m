//
//  ViewController.m
//  归档
//
//  Created by 杨帆 on 2018/12/17.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
- (IBAction)archive:(id)sender;
- (IBAction)unarchive:(id)sender;

@property(nonatomic, strong) NSData *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 序列化与反序列化
}


- (IBAction)archive:(id)sender {
    
    Person *p = [[Person alloc]init];
    p.name = @"zhangsan";
    p.age = 20;
    
    NSError *error;
    
   self.data =  [NSKeyedArchiver archivedDataWithRootObject:p requiringSecureCoding:YES error:&error];
    
    if (error) {
        NSLog(@"%@", error);
    }
}

- (IBAction)unarchive:(id)sender {
    
     Person *p = [NSKeyedUnarchiver unarchivedObjectOfClass:Person.class fromData:self.data error:nil];
    
     NSLog(@"%@ -- %d", p.name, p.age);
}
@end
