//
//  ViewController.m
//  UIButton基础
//
//  Created by tuqiangyao on 2018/7/1.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建普通按钮函数
- (void) createUIRectButton
{
    //创建一个btn对象，根据类型来创建btn
    //圆角类型btn：UIButtonTypeRoundeRect
    //通过类方法来创建buttonWithTYpe:类名+方法名
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //设置button按钮的位置
    btn.frame = (CGRectMake(100, 100, 100, 40));
    
    //设置按钮的文字内容
    //@parameter
    //p1: 字符串类型，表示到按钮上的文字
    //p2: 设置文字显示的状态类型：UIControlStateNormal ，正常状态
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
    
    //p1: 显示的文字
    //p2: 显示文字的状态：UIControlStateHighlighted， 按下的状态
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    
    //灰色背景颜色
    btn.backgroundColor = [UIColor grayColor];
    
    //设置文字显示的颜色
    //p1:颜色
    //p2:状态
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //设置按下状态的颜色
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //设置按钮的风格颜色
    [btn setTintColor:[UIColor blackColor]];
    
    //titleLabel:UIlabel空间
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    
    //添加到视图中并显示
    [self.view addSubview:btn];
}

//创建一个可以显图片的按钮
- (void)creatImageBtn
{
    //创建一个自定义类型的btn
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    
    UIImage* icon01 = [UIImage imageNamed:@"btn02.jpg"];
    
    UIImage* icon02 = [UIImage imageNamed:@"btn03.jpg"];
    
    //设置按钮图片的方法来去设置
    //p1:显示的图片对象
    //p2:控件的状态
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUIRectButton];
    
    [self creatImageBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
