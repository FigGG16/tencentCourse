//
//  ViewController.m
//  FMDB的使用
//
//  Created by 杨帆 on 2018/12/23.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "DBTools.h"

@interface ViewController ()
- (IBAction)createDB:(id)sender;
- (IBAction)createTab:(id)sender;
- (IBAction)insertData:(id)sender;
- (IBAction)deleteData:(id)sender;
- (IBAction)updateData:(id)sender;
- (IBAction)queryData:(id)sender;

@property (nonatomic, strong) DBTools *dbTools;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dbTools  = [[DBTools alloc]init];
}


- (IBAction)createDB:(id)sender {
    
    [self.dbTools createDB];
}

- (IBAction)createTab:(id)sender {
    
    [self.dbTools createTab];
}

- (IBAction)insertData:(id)sender {
    
    Student *stu = [[Student alloc]initWithName:@"xiaoming" Age:20 Sex:@"male"];
    
    [self.dbTools insertStu:stu];
}

- (IBAction)deleteData:(id)sender {
    
    [self.dbTools deleteStu:@"xiaoming"];
}

- (IBAction)updateData:(id)sender {
    
    Student *stu = [[Student alloc]initWithName:@"xiaoming" Age:22 Sex:@"female"];
    
    [self.dbTools updateStu:stu];
}

- (IBAction)queryData:(id)sender {
    
    NSArray *stus = [self.dbTools queryStu:@"xiaoming"];
    
    for (Student *stu in stus) {
        
        NSLog(@"%@", stu);
    }
}
@end
