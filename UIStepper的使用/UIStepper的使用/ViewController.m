//
//  ViewController.m
//  UIStepper的使用
//
//  Created by 杨帆 on 2018/11/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *shoplb;
- (IBAction)change:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)change:(id)sender {
    
    UIStepper *steper = (UIStepper *)sender;
    
    double value = steper.value;
    
    self.shoplb.text = [NSString stringWithFormat:@"您购买了%d件商品", (int)value];
}
@end
