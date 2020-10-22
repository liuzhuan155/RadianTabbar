//
//  LZTabBarVC.m
//  WebViewTest
//
//  Created by 刘转 on 2019/3/4.
//  Copyright © 2019年 刘转. All rights reserved.
//

#import "LZTabBarVC.h"
#import "LZCustomTabbar.h"
#import "UIImage+LZScaleToSize.h"

@interface LZTabBarVC ()

@end

@implementation LZTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 隐藏tabbar黑色线条
           //去掉顶部黑线
         if (@available(iOS 13.0, *))  {
             UITabBarAppearance* tabbarAppearance =self.tabBar.standardAppearance;
              tabbarAppearance.backgroundImage = [UIImage imageWithColor:tabbarBackColor];
             tabbarAppearance.shadowImage = [UIImage imageWithColor:tabbarBackColor];
             self.tabBar.standardAppearance = tabbarAppearance;;
         }else{
             self.tabBar.backgroundImage = [UIImage new];
             self.tabBar.shadowImage = [UIImage new];
         }
       self.tabBar.backgroundColor = tabbarBackColor;
    self.tabBar.barTintColor = tabbarBackColor;
       [self.tabBar setTranslucent:NO];
       [self.tabBar setUnselectedItemTintColor:[UIColor lightGrayColor]];
       [self.tabBar setTintColor:[UIColor blackColor]];
       [self initUI];
   
}
- (void)initUI
{
   
    LZCustomTabbar * tabbar = [[LZCustomTabbar alloc] init];
    //中间自定义tabBar点击事件
    __weak __typeof(self) weakSelf = self;
    tabbar.btnClickBlock = ^(UIButton *btn) {
        __typeof(&*weakSelf) strongSelf = weakSelf;
        strongSelf.selectedIndex = 2;
    };
    [self setValue:tabbar forKeyPath:@"tabBar"];
    
}
#pragma mark - 添加子控制器  设置图片
/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (UINavigationController*)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字

    // 设置子控制器的图片
    childVc.tabBarItem.image = [[UIImage originImage:[UIImage imageNamed:image]  scaleToSize:CGSizeMake(tabbarItemImageWidth, tabbarItemImageHeight)] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = [[UIImage originImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] scaleToSize:CGSizeMake(tabbarItemImageWidth, tabbarItemImageHeight)] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //未选中字体颜色  system为系统字体
    [childVc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName:[UIFont fontWithName:nil size:13]} forState:UIControlStateNormal];
    
    //选中字体颜色
    [childVc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont fontWithName:nil size:13]} forState:UIControlStateSelected];
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVc];
    return nav;
}
#pragma mark - 类的初始化方法，只有第一次使用类的时候会调用一次该方法
+ (void)initialize
{
    //tabbar去掉顶部黑线
    [[UITabBar appearance] setBackgroundImage:[UIImage new]];
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
 
    [LZCustomTabbar setTabBarUI:self.tabBar.subviews tabBar:self.tabBar topLineColor:TopLineColor backgroundColor:self.tabBar.barTintColor];
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
