//
//  WeChatTableViewCellXIB.m
//  UITableView自定义Cell
//
//  Created by 杨帆 on 2018/11/13.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "WeChatTableViewCellXIB.h"

@implementation WeChatTableViewCellXIB

-(void)configCell:(WeChat *)wechat{
    
    self.pic.image = [UIImage imageNamed:wechat.picName];
    
    self.title.text = wechat.titleText;
    
    self.time.text = wechat.timeText;
    
    self.content.text = wechat.contentText;
}

@end
