//
//  ViewController.m
//  UISlider的使用
//
//  Created by 杨帆 on 2018/11/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)change:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)change:(id)sender {
    
    UISlider *slider = (UISlider *) sender;
    
    if(slider.value < 35.0){
        
        self.img.image = [UIImage imageNamed:@"low"];
        
    }
    
    else if (slider.value < 70.0){
        
        self.img.image = [UIImage imageNamed:@"middle"];
    }
    
    else{
        
         self.img.image = [UIImage imageNamed:@"high"];
    }
}
@end
