//
//  ViewController.m
//  UIScrollView图片轮播
//
//  Created by 杨帆 on 2018/11/8.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *bannerScrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //----------加载plist文件背诵
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cityData.plist" ofType:nil];
    
    NSDictionary *cities = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSLog(@"%@", [[cities allKeys] firstObject]);
    
    NSArray *city = cities[[[cities allKeys] firstObject]];
    
    NSLog(@"%@", [city firstObject]);
    //-------------------------------------////////////////
    
    self.bannerScrollView.delegate = self;
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    //循环添加5张图
    for(int i = 0; i<5; i++){
        CGRect frame = CGRectMake(i * width, 0, width, 200);
        
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:frame];
        
        NSString *imgName = [NSString stringWithFormat:@"img%d", i];
        
        imgView.image = [UIImage imageNamed:imgName];
        
        [self.bannerScrollView addSubview:imgView];
        
        self.bannerScrollView.contentSize = CGSizeMake(5*width, 0);
    }
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    CGFloat offset =  scrollView.contentOffset.x;
    
    NSInteger index = offset/[UIScreen mainScreen].bounds.size.width;
   
    self.pageControl.currentPage = index;
}


@end
