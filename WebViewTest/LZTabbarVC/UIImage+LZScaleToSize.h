//
//  LZScaleToSize.h
//  WebViewTest
//
//  Created by 刘转 on 2019/3/4.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LZScaleToSize)

/**
 重新绘制图片大小
 
 @param image 原始图片
 @param size  需要的大小
 
 @return 返回改变大小后图片
 */
+ (UIImage*) originImage:(UIImage*)image scaleToSize:(CGSize)size;
+(UIImage*)imageWithColor:(UIColor*)color;
@end

NS_ASSUME_NONNULL_END
