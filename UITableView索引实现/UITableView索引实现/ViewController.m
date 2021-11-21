//
//  ViewController.m
//  UITableView索引实现
//
//  Created by 杨帆 on 2018/11/10.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSArray *sectionTitles;

@property(nonatomic, strong) NSArray<NSArray *> *contentsArray;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

-(NSArray<NSArray *> *)contentsArray{
    
    if (_contentsArray == nil) {
        
        _contentsArray  = [[NSArray alloc] initWithObjects:
                           @[@"阿伟",@"阿姨",@"阿三"],
                           @[@"蔡芯",@"成龙",@"陈鑫",@"陈丹",@"成名"],
                           @[@"芳仔",@"房祖名",@"方大同",@"芳芳",@"范伟"],
                           @[@"郭靖",@"郭美美",@"过儿",@"过山车"],
                           @[@"何仙姑",@"和珅",@"郝歌",@"好人"],
                           @[@"妈妈",@"毛不易"],
                           @[@"孙周",@"沈冰",@"婶婶"],
                           @[@"涛涛",@"淘宝",@"套娃"],
                           @[@"小二",@"夏紫薇",@"许巍",@"许晴"],
                           @[@"周扒皮",@"周杰伦",@"张柏芝",@"张大仙"],nil];
    }
    
    return _contentsArray;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //懒加载 - 延迟加载
    _sectionTitles  = [[NSArray alloc] initWithObjects:
                       @"A",@"C",@"F",@"G",@"H",@"M",@"S",@"T",@"X",@"Z", nil];
    
    
    
    //索引文字的颜色
    self.tableView.sectionIndexColor = UIColor.greenColor;
    
    //索引的背景色
    self.tableView.sectionIndexBackgroundColor = UIColor.redColor;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return _sectionTitles.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.contentsArray[section].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    
    cell.textLabel.text = self.contentsArray[indexPath.section][indexPath.row];
    
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return self.sectionTitles[section];
}

-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    
    return self.sectionTitles;
}

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    
    NSLog(@"您点击的索引是:%@", title);
    
    
    return index;
}

@end
