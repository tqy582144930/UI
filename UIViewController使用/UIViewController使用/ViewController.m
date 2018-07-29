//
//  ViewController.m
//  UIViewController使用
//
//  Created by tuqiangyao on 2018/7/5.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时，调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //创建视图控制器二
    ViewC02* vc = [[ViewC02 alloc] init];
    
    //显示一个新的视图控制器界面到屏幕上
    //参数一：新的视图控制器对象
    //参数二：是否有动画切换效果
    //参数三：切换结束后功能调用，不需要传nil值即可
    [self presentViewController:vc animated:YES completion:nil];
}

//第一次程序加载视图时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    NSLog(@"viewDidLoad! 第一次加载!");
}

//当视图控制器的视图即将显示时，调用此函数
//视图分为：1、显示前（不显示） 2、正在处于显示状态 3、已经被隐藏
//参数：表示是否用动画切换后显示
- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear,视图即将显示！");
}

//视图即将消失时调用此函数
//参数：表示是否用动画切换后消失
//当前的状态视图还是显示在屏幕上
- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"视图即将消失！");
}

//当我们的视图已经显示到屏幕后的瞬间调用此函数
//参数：表示是否用动画切换显示的
//当前状态已经显示到屏幕上了
//每一次视图显示时都要被调用
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"视图已经显示！");
}

//当前视图已经从屏幕上消失
//参数：表示是否用动画切换后显示
//当前状态当前视图控制器已经消失在屏幕上
- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"视图已经消失！");
}

//内存过低警告接受函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
