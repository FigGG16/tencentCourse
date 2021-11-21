//
//  ViewController.m
//  UITableView自定义Cell
//
//  Created by 杨帆 on 2018/11/12.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"
#import "WeChatTableViewCell.h"
#import "WeChatTableViewCellXIB.h"
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
    
    //不用storyboard的情况下必须使用这些关联
    //  关联Cell到TableView
    UINib *nib = [UINib nibWithNibName:@"WeChatTableViewCellXIB" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"cba"];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    WeChatTableViewCellXIB *cell = [tableView dequeueReusableCellWithIdentifier:@"cba"];

    [cell configCell:[self.wechats objectAtIndex:indexPath.row]];
    
    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.wechats.count;
}


@end
