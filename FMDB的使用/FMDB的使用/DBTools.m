//
//  DBTools.m
//  FMDB的使用
//
//  Created by 杨帆 on 2018/12/23.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "DBTools.h"
#import "fmdb/FMDB.h"

@interface DBTools()

@property (strong, nonatomic) FMDatabase *db;

@end

@implementation DBTools

-(void)createDB{
    
    NSString *docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    
    NSString *fileName = [docPath stringByAppendingPathComponent:@"student.db"];
    
    self.db = [FMDatabase databaseWithPath:fileName];
    
    BOOL isSuccess = [self.db open];
    
    if (isSuccess) {
        
        NSLog(@"打开数据库成功");
    }
    else{
        
        NSLog(@"打开数据库失败");
    }
    
}
-(void)createTab{
    
    [self createDB];
    
    NSString *sql = @"create table t_stu(id integer primary key autoincrement, name text,  age integer, sex text)";
    
    BOOL isSuccess = [self.db executeUpdate:sql];
    
    if (isSuccess) {
        
        NSLog(@"数据表创建成功");
    }
    
    else{
        
        NSLog(@"数据表创建失败");
    }
    
    [self.db close];
}
-(void)insertStu:(Student *)stu{
    
    [self createDB];
    
    NSString *sql = @"insert into t_stu(name, age, sex) values (?, ?, ?)";
    
    BOOL isSuccess = [self.db executeUpdate:sql, stu.name, @(stu.age), stu.sex];
    
    if (isSuccess) {
        
        NSLog(@"数据插入成功");
    }
    
    else{
        
        NSLog(@"数据插入失败");
    }
    
    [self.db close];
    
}
-(void)deleteStu:(NSString *)stuName{
    
    [self createDB];
    
    NSString *sql = @"delete from t_stu where name =?";
    
    BOOL isSuccess = [self.db executeUpdate:sql, stuName];
    
    if (isSuccess) {
        
        NSLog(@"数据删除成功");
    }
    
    else{
        
        NSLog(@"数据删除失败");
    }
    
    [self.db close];
}
-(void)updateStu:(Student *)stu{
    
    [self createDB];
    
    NSString *sql = @"update t_stu set age =?, sex =? where name = ?";
    
    BOOL isSuccess = [self.db executeUpdate:sql, @(stu.age), stu.sex, stu.name];
    
    if (isSuccess) {
        
        NSLog(@"数据修改成功");
    }
    
    else{
        
        NSLog(@"数据修改失败");
    }
    
    [self.db close];
    
}
-(NSArray<Student *> *)queryStu:(NSString *)stuName{
    
    [self createDB];
    
    NSMutableArray *stus = [NSMutableArray array];
    
    NSString *sql = @"select age, sex from t_stu where name = ?";
    
    FMResultSet *result = [self.db executeQuery:sql, stuName];
    
    while (result.next) {
        
        NSString *sex = [result stringForColumn:@"sex"];
        int age = [result intForColumn:@"age"];
        
        Student *stu = [[Student alloc]initWithName:stuName Age:age Sex:sex];
        
        [stus addObject:stu];
        
    }
    
    
    [self.db close];
    
    return stus;
}

@end
