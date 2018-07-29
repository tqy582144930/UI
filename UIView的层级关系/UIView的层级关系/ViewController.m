//
//  ViewController.m
//  UIView的层级关系
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
    
    //创建三个视图对象
    UIView* view1 = [[UIView alloc] init];
    
    view1.frame = CGRectMake(100, 100, 150, 150);
    
    view1.backgroundColor = [UIColor blueColor];
    
    UIView* view2 = [[UIView alloc] init];
    
    view2.frame = CGRectMake(125, 125, 150, 150);
    
    view2.backgroundColor = [UIColor orangeColor];
    
    UIView* view3 = [[UIView alloc] init];
    
    view3.frame = CGRectMake(150, 150, 150, 150);
    
    view3.backgroundColor = [UIColor greenColor];
    
    //将三个视图对象显示到屏幕上
    //并且添加搭配父亲视图上
    //哪一个视图被先添加到父亲视图中，先绘制哪个视图
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    
    //将某一个视图调整到最前面显示
    //参数：UIView对象，调整哪一个视图到最前方
    [self.view bringSubviewToFront:view3];
    
    //将某一个视图调整到最后面显示
    //参数：UIView对象，调整哪一个视图到最后方
    [self.view sendSubviewToBack:view1];
    
    //subviews是管理所有self.view子视图的数组
    UIView* viewFront = self.view.subviews[2];
    
    UIView* viewBack = self.view.subviews[0];
    
    if (viewBack == view1) {
        NSLog(@"相等！");
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
