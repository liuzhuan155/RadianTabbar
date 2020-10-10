//
//  LZCustomTabbar.h
//  WebViewTest
//
//  Created by 刘转 on 2019/3/4.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^ClickBlock)(UIButton* _Nonnull btn);
NS_ASSUME_NONNULL_BEGIN

@interface LZCustomTabbar : UITabBar
@property (nonatomic, copy) ClickBlock btnClickBlock;
+(void)setTabBarUI:(NSArray*)views tabBar:(UITabBar*)tabBar topLineColor:(UIColor*)lineColor backgroundColor:(UIColor*)backgroundColor;
@end

NS_ASSUME_NONNULL_END
