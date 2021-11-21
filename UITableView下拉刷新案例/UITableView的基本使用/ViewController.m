//
//  ViewController.m
//  UITableView的基本使用
//
//  Created by 杨帆 on 2018/11/8.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(strong, nonatomic) NSMutableArray *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   NSArray *one = @[@"iPhone3G",@"iPhone3GS",@"iPhone4",@"iPhone4S",@"iPhone5",@"iPhone5S",@"iPhone6",@"iPhone6 Plus",@"iPhone6S",@"iPhone6S Plus",@"iPhone SE",@"iPhone7",@"iPhone7 Plus",@"iPhone8",@"iPhone8 PLus",@"iPhone X",@"iPhone XS",@"iPhone XR",@"iPhone XS Max"];
    
    self.data = [NSMutableArray arrayWithArray:one];
    
    self.tableView.rowHeight = 80.0;
    
    UIRefreshControl *control = [[UIRefreshControl alloc]init];
    
    control.attributedTitle = [[NSAttributedString alloc]initWithString:@"刷新iPhone"];
    
    [control addTarget:self action:@selector(refreshTableView) forControlEvents:UIControlEventValueChanged];
    
    self.tableView.refreshControl = control;
}

-(void)refreshTableView{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.data insertObject:@"new iPhone" atIndex:0];
        
        [self.tableView reloadData];
        
        if ([self.tableView.refreshControl isRefreshing]) {
            
            [self.tableView.refreshControl endRefreshing];
        }
    });
    
    
    
}

//数据源方法
//多少组
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    
//    return 1;
//}

//每行显示的内容是什么
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSLog(@"%ld", (long)indexPath.row);
    
    
    //从重用池中查找对应的Cell
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    cell.textLabel.text = self.data[indexPath.row];
    
    return cell;
    
}

//每组多少行
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.data.count;
}


@end
