//
//  ViewController.m
//  UI-步进器和分栏控件
//
//  Created by tuqiangyao on 2018/7/18.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segControl = _segControl;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建步进器对象
    _stepper = [[UIStepper alloc] init];
    
    //设置位置，宽高不能改变
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    
    //设置步进器的最小值
    _stepper.minimumValue = 0;
    
    //设置步进器最大值
    _stepper.maximumValue = 100;
    
    //设置步进器当前值（默认值为0）
    _stepper.value = 10;
    
    //设置步进值，每次向前或向后步进的步伐值
    _stepper.stepValue = 10;
    
    //是否可以重复响应事件操作
    _stepper.autorepeat = YES;
    
    //是否将步进结果通过事件函数响应出来
    _stepper.continuous = YES;
    
    //添加一个事件函数
    //1、函数实现体
    //2、函数体
    //3、事件值改变状态
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    
    //创建分栏控件
    _segControl = [[UISegmentedControl alloc] init];
    
    //设置控件位置，宽度可变，高度不可变
    _segControl.frame = CGRectMake(10, 200, 300, 40);
    
    //添加一个按钮元素
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    
    //参数一：按钮选项文字
    //参数二：按钮的索引位置
    //参数三：是否有动画效果
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    
    //当前默认按钮索引设置
    _segControl.selectedSegmentIndex = 0;
    
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segControl];
}

- (void)stepChange
{
    NSLog(@"step press!");
}

-(void) segChange
{
    NSLog(@"%d", _segControl.selectedSegmentIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
