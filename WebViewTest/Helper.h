//
//  Helper.h
//  WebViewTest
//
//  Created by 刘转 on 2019/2/27.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Helper : NSObject
+(void)callPhoneAction:(NSString*) phoneNum;
+(void)sendMessageAction:(NSString*) phoneNum;
+(void)alertMsgWithTitle:(NSString*)title Content:(NSString*)content;
@end

NS_ASSUME_NONNULL_END
