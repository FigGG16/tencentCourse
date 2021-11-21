//
//  ViewController.m
//  UIScrollView的使用
//
//  Created by 杨帆 on 2018/11/7.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.delegate = self;
    
    //滚动的内容的大小
    self.scrollView.contentSize = CGSizeMake(1186, 667);
    //设置内容的偏移
    self.scrollView.contentOffset = CGPointMake(450, 200);
    //设置内容的边距
    self.scrollView.contentInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    self.imgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sv"]];
    
    [self.scrollView addSubview:self.imgView];
}

//只要一滚动就调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    NSLog(@"%s", __func__);
    
}

//只要一缩放就调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    
    NSLog(@"%s", __func__);
}

//开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"%s", __func__);
    
}

//即将结束拖拽
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    
    NSLog(@"%s", __func__);
    
}

//结束拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"%s", __func__);
    
}

//开始减速
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%s", __func__);
    
}

//完成减速
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%s", __func__);
    
}


//缩放的控件
- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return self.imgView;
    
}

//即将开始缩放
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view{
    
    NSLog(@"%s", __func__);
    
}

//完成缩放
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale{
    
    NSLog(@"%s", __func__);
}

@end
