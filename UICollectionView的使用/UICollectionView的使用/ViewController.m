//
//  ViewController.m
//  UICollectionView的使用
//
//  Created by 杨帆 on 2018/11/14.
//  Copyright © 2018 ABC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    
     CGFloat w = (UIScreen.mainScreen.bounds.size.width - 3*5)*0.5;
    
    //208 247
    layout.itemSize = CGSizeMake(w, 247);
    
    layout.minimumLineSpacing = 5;
    
    layout.minimumInteritemSpacing = 5;
    
    layout.sectionInset = UIEdgeInsetsMake(0, 5, 0, 5);
    
    
    self.collectionView.collectionViewLayout = layout;
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"abc" forIndexPath:indexPath];
    
    
    return cell;
    
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 10;
}


@end
