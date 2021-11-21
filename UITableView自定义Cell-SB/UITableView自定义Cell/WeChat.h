//
//  WeChat.h
//  UITableView自定义Cell
//
//  Created by 杨帆 on 2018/11/12.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeChat : NSObject

@property(nonatomic, copy) NSString *picName;
@property(nonatomic, copy) NSString *titleText;
@property(nonatomic, copy) NSString *timeText;
@property(nonatomic, copy) NSString *contentText;


-(NSMutableArray *)getModels;


@end

NS_ASSUME_NONNULL_END
