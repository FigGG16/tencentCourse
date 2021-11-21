//
//  Person.h
//  SQLite数据库操作
//
//  Created by 杨帆 on 2018/12/17.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *address;

-(instancetype)initWithName:(NSString *)name Phone:(NSString *)phone Address:(NSString *)address;

@end

NS_ASSUME_NONNULL_END
