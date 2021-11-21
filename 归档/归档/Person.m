//
//  Person.m
//  归档
//
//  Created by 杨帆 on 2018/12/17.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    
    [aCoder encodeObject:self.name forKey:@"name"];
    //[aCoder encodeInt:self.age forKey:@"age"];
    
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    
    if (self = [super init]) {
        
        self.name = [aDecoder decodeObjectForKey:@"name"];
        //self.age = [aDecoder decodeIntForKey:@"age"];
    }
    
    return self;
}

+(BOOL)supportsSecureCoding{
    
    return YES;
}

@end
