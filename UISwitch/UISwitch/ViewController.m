//
//  ViewController.m
//  UISwitch
//
//  Created by tuqiangyao on 2018/7/8.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性和成员变量
@synthesize myswitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个开关对象
    //继承于UIView对象
    _mySwitch = [[UISwitch alloc] init];
    
    //苹果官方的控件的位置设置
    //位置X，Y的值可以改变
    //宽高无法改变的
    _mySwitch.frame = CGRectMake(100, 100, 80, 40);
    
    //开关状态设置属性
    //YES：开启状态
    //NO：关闭状态
    _mySwitch.on = YES;
    
    [_mySwitch setOn:YES];
    
    //也是设置快关状态
    //p1:状态设置
    //p2:是否开启动画效果
    [_mySwitch setOn:YES animated:YES];
    
    [self.view addSubview:_mySwitch];
    
    //设置开启状态的风格颜色
    [_mySwitch setOnTintColor:[UIColor redColor]];
    
    //改变开关按钮的颜色
    [_mySwitch setThumbTintColor:[UIColor greenColor]];
    
    //设置整体风格颜色
    [_mySwitch setTintColor:[UIColor purpleColor]];
    
    //向我们的开关控件添加事件函数
    //p1:函数实现对象
    //p2:函数对象
    //p3:事件响应时的事件类型UIControlEventValueChanged：状态发生变化时触发函数
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
}

//参数传入开关对象本身
- (void)swChange:(UISwitch*) sw
{
    //on表示当前结束的状态
    if (sw.on == YES) {
        NSLog(@"开关被打开！");
    }else{
        NSLog(@"开关被关闭！");
    }
    NSLog(@"开关状态发生变化！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
