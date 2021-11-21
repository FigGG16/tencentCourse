//
//  Person.m
//  SQLite数据库操作
//
//  Created by 杨帆 on 2018/12/17.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWithName:(NSString *)name Phone:(NSString *)phone Address:(NSString *)address{
    
    if (self = [super init]) {
        
        self.name  = name;
        self.phone = phone;
        self.address = address;
    }
   
    return self;
}

-(NSString *)description{
    
    return [NSString stringWithFormat:@"%@ -- %@ -- %@", self.name, self.phone, self.address];
}

@end
