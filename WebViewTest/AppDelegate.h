//
//  AppDelegate.h
//  WebViewTest
//
//  Created by 刘转 on 2019/2/27.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

