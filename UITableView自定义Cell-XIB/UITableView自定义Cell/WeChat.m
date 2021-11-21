//
//  WeChat.m
//  UITableView自定义Cell
//
//  Created by 杨帆 on 2018/11/12.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "WeChat.h"

@interface WeChat()

@property(strong, nonatomic) NSArray *pics;
@property(strong, nonatomic) NSArray *titles;
@property(strong, nonatomic) NSArray *times;
@property(strong, nonatomic) NSArray *contents;
@property(strong, nonatomic) NSMutableArray *wechats;

@end

@implementation WeChat

-(NSMutableArray *)wechats{
    
    if (_wechats == nil) {
        
        _wechats = [NSMutableArray array];
        
        for (int i = 0; i<self.titles.count; i++) {
            
            WeChat *wechat = [[WeChat alloc]init];
            wechat.picName = self.pics[i];
            wechat.titleText = self.titles[i];
            wechat.timeText = self.times[i];
            wechat.contentText = self.contents[i];
            
            [_wechats addObject:wechat];
            
        }
    }
    
    return _wechats;
    
}

-(NSArray *)pics{
    
    if (_pics == nil) {
        
        _pics = @[@"add_friend_icon_addgroup_36x36_",@"Contact_icon_ContactTag_36x36_",@"plugins_FriendNotify_36x36_",@"Plugins_WeSport_36x36_",@"ReadVerified_icon_36x36_"];
        
    }
    
    return _pics;
}

-(NSArray *)titles{
    
    if (_titles == nil) {
        
        _titles = @[@"小龙女哀悼金庸", @"坠江公交黑匣子",@"新iPad发布",@"金庸去世", @"苹果发布会"];
    }
    
    return _titles;
}

-(NSArray *)times{
    
    if (_times == nil) {
        
        _times = @[@"10:12", @"10:15", @"10:20", @"10:50", @"11:00"];
    }
    
    return _times;
    
}

-(NSArray *)contents{
    
    if (_contents == nil) {
        
        _contents = @[@"小龙女哀悼金庸:他笔下的小龙女给予我一切一切", @"重庆坠江公交车黑匣子打捞出水 已交公安部门", @"新iPad发布 苹果10月发布会发布三款新品", @"94岁金庸去世 网友明星悼念:他带着武侠梦睡着了", @"苹果于10月30号晚上22点召开新品发布会"];
    }
    
    return _contents;
    
}


-(NSMutableArray *)getModels{
    
    return self.wechats;
}

@end
