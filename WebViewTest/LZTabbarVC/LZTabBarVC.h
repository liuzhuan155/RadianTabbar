//
//  LZTabBarVC.h
//  WebViewTest
//
//  Created by 刘转 on 2019/3/4.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LZTabBarVC : UITabBarController
#pragma mark - 添加子控制器  设置图片
/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (UINavigationController*)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage;
@end

NS_ASSUME_NONNULL_END
