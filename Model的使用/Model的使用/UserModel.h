//
//  UserModel.h
//  Model的使用
//
//  Created by 杨帆 on 2018/11/11.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject

@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *password;

@property (nonatomic, strong) NSData  *pic;

@end

NS_ASSUME_NONNULL_END
