//
//  MainTabbarViewController.m
//  WebViewTest
//
//  Created by zhang on 2020/10/22.
//  Copyright © 2020 刘转. All rights reserved.
//

#import "MainTabbarViewController.h"
#import "ViewController.h"

@interface MainTabbarViewController ()

@end

@implementation MainTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //第一个控制器
    ViewController * vc1 = [[ViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    UINavigationController * NC1 = [self addChildVc:vc1 title:@"首页" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    //第2个控制器
    UIViewController * vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor yellowColor];
    UINavigationController * NC2 = [self addChildVc:vc2 title:@"课程" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    //第3个控制器
    UIViewController * vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    UINavigationController * NC3 = [self addChildVc:vc3 title:@"收藏" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    //第4个控制器
    UIViewController * vc4 = [[UIViewController alloc] init];
    vc4.view.backgroundColor = [UIColor purpleColor];
    UINavigationController * NC4 = [self addChildVc:vc4 title:@"我的" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    //第5个控制器
    UIViewController * vc5 = [[UIViewController alloc] init];
    vc5.view.backgroundColor = [UIColor whiteColor];
    vc5.navigationItem.title = @"中间";
    UINavigationController * NC5 = [[UINavigationController alloc] initWithRootViewController:vc5];
//    UINavigationController * NC5 = [self addChildVc:vc5 title:@"中间" image:@"tabBar_publish_icon" selectedImage:@"tabBar_publish_icon"];
    
    
     self.viewControllers = @[NC1,NC2,NC5,NC3,NC4];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
