//
//  SecViewController.h
//  控制器逆向传值
//
//  Created by 杨帆 on 2018/11/21.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


//1.定义Block
typedef void (^ PassValueBlock) (NSString *info);

@interface SecViewController : UIViewController

//2.声明属性
@property (nonatomic, copy) PassValueBlock passValueBlock;

@end

NS_ASSUME_NONNULL_END
