//
//  ViewController.m
//  UIPickerView的使用
//
//  Created by 杨帆 on 2018/11/7.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property (strong, nonatomic) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.data = @[@"AA", @"BB", @"CC", @"DD"];
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
}


//选择器有几列
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    
    return 1;
}

//每一列有多少行
- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return self.data.count;
}

//每一行的标题
//多次调用 每调用一次就会返回一个row的标题
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSLog(@"***********");
    
    return self.data[row];
}


@end
