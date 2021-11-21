//
//  Student.m
//  FMDB的使用
//
//  Created by 杨帆 on 2018/12/23.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype)initWithName:(NSString *)name Age:(int)age Sex:(NSString *)sex{
    
    if (self = [super init]) {
        
        self.name = name;
        self.age = age;
        self.sex = sex;
        
    }
    
    return self;
}

-(NSString *)description{
    
    return [NSString stringWithFormat:@"name = %@, age = %d, sex = %@", self.name, self.age, self.sex];
}

@end
