//
//  DBTools.h
//  FMDB的使用
//
//  Created by 杨帆 on 2018/12/23.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface DBTools : NSObject

-(void)createDB;
-(void)createTab;
-(void)insertStu:(Student *)stu;
-(void)deleteStu:(NSString *)stuName;
-(void)updateStu:(Student *)stu;
-(NSArray<Student *> *)queryStu:(NSString *)stuName;

@end

NS_ASSUME_NONNULL_END
