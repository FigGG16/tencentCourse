//
//  Student.h
//  FMDB的使用
//
//  Created by 杨帆 on 2018/12/23.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (copy, nonatomic) NSString *name;
@property (assign, nonatomic) int age;
@property (copy, nonatomic) NSString *sex;
-(instancetype)initWithName:(NSString *) name Age:(int)age Sex:(NSString *)sex;

@end

NS_ASSUME_NONNULL_END
