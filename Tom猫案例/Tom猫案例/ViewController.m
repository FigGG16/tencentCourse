//
//  ViewController.m
//  Tom猫案例
//
//  Created by 杨帆 on 2018/11/4.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomcatImg;

- (IBAction)cymbal:(id)sender;

- (IBAction)drink:(id)sender;

- (IBAction)eat:(id)sender;

- (IBAction)fart:(id)sender;

- (IBAction)pie:(id)sender;

- (IBAction)scratch:(id)sender;

@property(strong, nonatomic) NSMutableArray *imgArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imgArray = [NSMutableArray array];
}


- (IBAction)cymbal:(id)sender {
}

- (IBAction)drink:(id)sender {
    
    if (self.imgArray.count > 0) {
        
        [self.imgArray removeAllObjects];
    }
    
    //1. 找到对应的图片组
    for (int i = 0; i<=80; i++) {
        
        NSString *imgName = [NSString stringWithFormat:@"drink_%02d.jpg", i];
        
        //UIImage代表一个图片 可以通过名称获取
        UIImage *img = [UIImage imageNamed:imgName];
        
        [self.imgArray addObject:img];
    }
    
    //2.进行图片的播放
    self.tomcatImg.animationImages = self.imgArray;
    self.tomcatImg.animationRepeatCount = 1;
    self.tomcatImg.animationDuration = self.imgArray.count * 0.075;
    
    [self.tomcatImg startAnimating];
    
}

- (IBAction)eat:(id)sender {
}

- (IBAction)fart:(id)sender {
}

- (IBAction)pie:(id)sender {
}

- (IBAction)scratch:(id)sender {
}

@end
