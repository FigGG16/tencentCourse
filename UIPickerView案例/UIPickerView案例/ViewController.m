//
//  ViewController.m
//  UIPickerView案例
//
//  Created by 杨帆 on 2018/11/7.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *first;
@property (weak, nonatomic) IBOutlet UILabel *second;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@property(strong, nonatomic) NSArray *firstArray;
@property(strong, nonatomic) NSArray *secondArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.firstArray = @[@"米饭",@"稀饭",@"面条",@"水饺",@"馒头",@"大饼"];
    
    self.secondArray = @[@"土豆丝",@"西红柿",@"红烧肉",@"一盘鱼"];
}


- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return self.firstArray.count;
    }
    
    else{
        
        return self.secondArray.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0) {
        return self.firstArray[row];
    }
    
    else{
        
        return self.secondArray[row];
    }
    
}

//选中哪一列的哪一行数据
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    
    if (component == 0) {
       
        self.first.text = self.firstArray[row];
    }
    
    else{
        
        self.second.text = self.secondArray[row];
    }
    
}


@end
