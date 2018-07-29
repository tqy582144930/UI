//
//  ViewController.m
//  UIView基本概念
//
//  Created by tuqiangyao on 2018/7/3.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个UIView对象
    //UIView是ios 中的视图对象
    //显示在屏幕上的所有的对象的基础类
    //所有显示在屏幕上的对象都是一定都继承于UIView
    //屏幕上能看到的对象都是UIView的子类
    //UIView是一个矩形对象，有背景颜色，有层级关系
    UIView *view = [[UIView alloc] init];
    
    //设置UIView的位置
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor orangeColor];
    
    //将我们新建的视图添加到父亲视图上
    //1、将我们新建的视图显示到屏幕上
    //2、将新建视图作为父亲视图的子视图管理起来
    [self.view addSubview:view];
    
    //是否隐藏视图对象
    //YES：不显示
    //NO：显示，默认值为NO
    view.hidden = NO;
    
    //设置视图的透明度
    //alpha = 1:不透明
    //alpha = 0:透明
    //alpha = 0.5:半透明
    //view.alpha = 0.5;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //设置是否显示不透明
    view.opaque = NO;
    
    //将自己从父亲视图删除掉
    //1、从父亲视图的管理中删除
    //2、不会显示在屏幕上
    //[view removeFromSuperview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
