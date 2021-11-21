//
//  WeChatTableViewCell.h
//  UITableView自定义Cell
//
//  Created by 杨帆 on 2018/11/12.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeChat.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeChatTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *pic;

@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UILabel *time;

@property (weak, nonatomic) IBOutlet UILabel *content;

-(void)configCell:(WeChat *)wechat;

@end

NS_ASSUME_NONNULL_END
