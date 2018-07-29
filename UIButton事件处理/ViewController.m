//
//  ViewController.m
//  UIButton事件处理
//
//  Created by tuqiangyao on 2018/7/1.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建按钮
- (void)creatBtn
{
    //创建圆角按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    //向按钮添加事件函数
    //p1:”谁“来实现这个事件函数，实现者对象就是“谁”
    //p2:@selector(pressBtn)：函数对象，当按钮满足p3事件类型时，调用函数
    //p3:UIControlEvent：事件处理函数类型
    //UIControlEventTouchUpInside：当手指离开屏幕时并且手指的位置在按钮范围内触发事件函数
    //UIControlEventTouchDown：指当我们的手指触碰到屏幕上时
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    //触碰时就调用事件函数
    [btn addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(100, 200, 80, 40);
    
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    
    //是可以多个按钮使用同一个事件函数来处理不同的按钮的事件
    [btn2 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn2];
    
    //设置按钮的标记值
    btn.tag = 101;
    btn2.tag = 102;
}

- (void) pressBtn2
{
    NSLog(@"按钮2被触发！");
}

- (void) touchDown
{
    NSLog(@"按钮被触碰！");
}

//参数为调用此函数按钮本身
- (void) pressBtn:(UIButton *)btn
{
    if (btn.tag == 101) {
        NSLog(@"btn1 pressed");
    }
    if (btn.tag == 102) {
        NSLog(@"btn2 pressed");
    }
}

//- (void) pressBtn
//{
//    NSLog(@"按钮被按下！");
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self creatBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
