//
//  ViewController.m
//  UIDatepicker的使用
//
//  Created by 杨帆 on 2018/11/7.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)getDate:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *showDate;
@property (weak, nonatomic) IBOutlet UITextField *inputBirth;

@property (strong, nonatomic) UIDatePicker *picker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1.创建日期选择器
    self.picker = [[UIDatePicker alloc]init];
    
    self.picker.datePickerMode = UIDatePickerModeDate;
    
    self.picker.locale = [NSLocale localeWithLocaleIdentifier:@"ZH_cn"];
    
    
    // 2.设置输入框的输入类型为日期选择器
    self.inputBirth.inputView = self.picker;
    
    //3.监听选择的日期
    [self.picker addTarget:self action:@selector(getBirth:) forControlEvents:UIControlEventValueChanged];
}

-(void)getBirth:(UIDatePicker *)picker{
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    self.inputBirth.text =  [dateFormat stringFromDate:picker.date];

    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
    
}

- (IBAction)getDate:(id)sender {
    
    UIDatePicker *picker = (UIDatePicker *) sender;
    
    //日期格式化
    NSDateFormatter *format = [[NSDateFormatter alloc]init];
    
    // 2018年11月11日 2018-11-11 2018/11/11
    // yyyy  MM  dd  hh mm ss  hh->HH 24小时制
    [format setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    self.showDate.text =  [format stringFromDate:picker.date];
    
    //NSLog(@"%@", picker.date);
}
@end
