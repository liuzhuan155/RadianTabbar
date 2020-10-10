//
//  Helper.m
//  WebViewTest
//
//  Created by 刘转 on 2019/2/27.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import "Helper.h"


@interface Helper()

@end
@implementation Helper
+(void)callPhoneAction:(NSString*) phoneNum{
    NSMutableString *str=[[NSMutableString alloc] initWithFormat:@"telprompt://%@",phoneNum];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str] options:@{} completionHandler:nil];
}
+(void)sendMessageAction:(NSString*) phoneNum{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"sms://%@",phoneNum]];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}
+(void)alertMsgWithTitle:(NSString*)title Content:(NSString*)content{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:content preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];

    [alertController addAction:okAction];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
}

@end
