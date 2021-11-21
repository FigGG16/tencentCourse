//
//  Person.h
//  归档
//
//  Created by 杨帆 on 2018/12/17.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <NSSecureCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;

@end

NS_ASSUME_NONNULL_END
