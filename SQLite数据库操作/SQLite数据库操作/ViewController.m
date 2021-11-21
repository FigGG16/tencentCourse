//
//  ViewController.m
//  SQLite数据库操作
//
//  Created by 杨帆 on 2018/12/17.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "DBTools.h"

@interface ViewController ()
//创建数据库
- (IBAction)createDataBase:(id)sender;
//创建表格
- (IBAction)createTable:(id)sender;
//插入数据
- (IBAction)insertData:(id)sender;
//删除数据
- (IBAction)deleteData:(id)sender;
//更新数据
- (IBAction)updateData:(id)sender;
//查询数据
- (IBAction)queryData:(id)sender;

@property (nonatomic, strong) DBTools *dbTools;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dbTools = [[DBTools alloc]init];
    self.dbTools.dbName = @"person.db";
}


- (IBAction)createDataBase:(id)sender {
    
    [self.dbTools createDB];
}

- (IBAction)createTable:(id)sender {
    
    [self.dbTools createTab:@"person"];
}

- (IBAction)insertData:(id)sender {
    
    Person *p = [[Person alloc]initWithName:@"zhangsan" Phone:@"18888888888" Address:@"AnHuiWuhuYiJiang"];
    
    [self.dbTools insertPerson:p];
}

- (IBAction)deleteData:(id)sender {
    
    [self.dbTools deletePerson:@"zhangsan"];
}

- (IBAction)updateData:(id)sender {
    
    Person *p = [[self.dbTools queryPersonByName:@"zhangsan"] firstObject];
    
    if (p) {
        
        p.phone = @"17777777777";
        p.address = @"JangSuNanJing";
        
        [self.dbTools updatePerson:p];
    }
   
}

- (IBAction)queryData:(id)sender {
    
    NSArray *array = [self.dbTools queryPersonByName:@"zhangsan"];
    
    if (array.count > 0) {
        
        for (Person *p in array) {
            NSLog(@"%@", p);
        }
    }
    
    
}
@end
