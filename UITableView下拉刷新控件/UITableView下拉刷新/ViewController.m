//
//  ViewController.m
//  UITableView下拉刷新
//
//  Created by 杨帆 on 2018/11/11.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIRefreshControl *control = [[UIRefreshControl alloc]init];
    control.attributedTitle = [[NSAttributedString alloc]initWithString:@"下拉刷新"];
    control.tintColor = UIColor.redColor;
    
    self.tableView.refreshControl = control;
}


@end
