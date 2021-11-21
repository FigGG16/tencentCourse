//
//  SecViewController.h
//  控制器逆向传值
//
//  Created by 杨帆 on 2018/11/21.
//  Copyright © 2018 ABC. All rights reserved.
//

#import <UIKit/UIKit.h>

//1.定义协议
@protocol passValueProtocol <NSObject>

-(void)passValue:(NSString *)info;

@end

NS_ASSUME_NONNULL_BEGIN

@interface SecViewController : UIViewController

//2.定义一个属性
@property (nonatomic, assign) id<passValueProtocol> delegate;

@end

NS_ASSUME_NONNULL_END
