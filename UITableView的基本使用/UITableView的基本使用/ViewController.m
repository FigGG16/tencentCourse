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
- (IBAction)edit:(id)sender;
- (IBAction)finish:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   NSArray *one = @[@"iPhone3G",@"iPhone3GS",@"iPhone4",@"iPhone4S",@"iPhone5",@"iPhone5S",@"iPhone6",@"iPhone6 Plus",@"iPhone6S",@"iPhone6S Plus",@"iPhone SE",@"iPhone7",@"iPhone7 Plus",@"iPhone8",@"iPhone8 PLus",@"iPhone X",@"iPhone XS",@"iPhone XR",@"iPhone XS Max"];
    
    self.data = [NSMutableArray arrayWithArray:one];
    
    self.tableView.rowHeight = 80.0;
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

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return  @"头部视图";
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    return @"尾部视图";
}

//代理方法
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    return 80.0;
//}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 60.0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 40.0;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //处理点击事件
    NSString *selData = self.data[indexPath.row];
    
    NSLog(@"%@", selData);
}

//删除

//1.该行能不能编辑
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return YES;
}

//2.提交编辑
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //以下语句不能调换顺序
        //1.删除对应的数据源中的方法
        [self.data removeObjectAtIndex:indexPath.row];
        
        //2.删除界面上的那一行
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        
    }
    
    else if (editingStyle == UITableViewCellEditingStyleInsert){
        
        //增加数据源
        [self.data insertObject:@"iPhone new" atIndex:indexPath.row];
        
        //刷新整个表格
       // [self.tableView reloadData];
        
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
    
   
  
    
}

//3.设置删除按钮的文字
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return @"删除";
}

- (IBAction)edit:(id)sender {
    
    [self.tableView setEditing:YES];
}

- (IBAction)finish:(id)sender {
    
    [self.tableView setEditing:NO];
}

//增加
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    //默认情况下是删除
    
    return UITableViewCellEditingStyleInsert;
    
    
}

//移动
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
    //1.移除需要移动的Cell
    NSString *cellData = self.data[sourceIndexPath.row];
    //2.移除原始位子的数据
    [self.data removeObjectAtIndex:sourceIndexPath.row];
    //3.往目标位置插入一个数据
    [self.data insertObject:cellData atIndex:destinationIndexPath.row];
}

@end
