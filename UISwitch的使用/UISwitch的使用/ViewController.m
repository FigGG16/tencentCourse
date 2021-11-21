//
//  ViewController.m
//  UISwitch的使用
//
//  Created by 杨帆 on 2018/11/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;

- (IBAction)change:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)change:(id)sender {
    
    UISwitch * swi = (UISwitch *) sender;
    
    if (swi.isOn) {
        
        self.img.image = [UIImage imageNamed:@"light"];
    }
    
    else{
        
        self.img.image = [UIImage imageNamed:@"nomal"];
    }
}
@end
