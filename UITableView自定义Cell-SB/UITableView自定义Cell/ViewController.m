//
//  ViewController.m
//  UITableView自定义Cell
//
//  Created by 杨帆 on 2018/11/12.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "WeChatTableViewCell.h"
#import "WeChat.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property(strong, nonatomic) NSMutableArray *wechats;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.rowHeight = 100.0;
    
    self.wechats = [[[WeChat alloc]init] getModels];
    
    self.tableView.tableFooterView = [[UIView alloc]init];
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    WeChatTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];

    [cell configCell:[self.wechats objectAtIndex:indexPath.row]];
    
    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.wechats.count;
}


@end
