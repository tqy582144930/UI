//
//  ViewController.m
//  UISlider和UIProgressView
//
//  Created by tuqiangyao on 2018/7/8.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //进度条的创建
    _progressView = [[UIProgressView alloc] init];
    
    //进度条的位置大小设置
    //进度条的高度是不可以变化
    _progressView.frame = CGRectMake(50, 100, 200, 40);
    
    //设置它的风格颜色值
    _progressView.progressTintColor = [UIColor redColor];
    
    _progressView.trackTintColor = [UIColor blackColor];
    
    //设置进度条是的进度值
    //范围从0到1
    //最小值为0，最大值为1
    _progressView.progress = 0.5;
    
    //设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:_progressView];
    
    _slider = [[UISlider alloc] init];
    
    //位置设置，高度不可变更
    _slider.frame = CGRectMake(10, 200, 300, 40);
    
    //设置滑动条最大值
    _slider.maximumValue = 100;
    
    //设置滑动条最小值，可以为负值
    _slider.minimumValue = -100;
    
    //设置滑动条滑块的位置float值
    _slider.value = 0;
    
    //左侧滑条背景颜色
    _slider.minimumTrackTintColor = [UIColor blueColor];
    
    //右侧滑条背景颜色
    _slider.maximumTrackTintColor = [UIColor greenColor];
    
    //设置滑块的颜色
    _slider.thumbTintColor = [UIColor orangeColor];
    
    //对滑动条添加事件函数
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
}

- (void) pressSlider
{
    _progressView.progress = (_slider.value - _slider.minimumValue)/(_slider.maximumValue - _slider.minimumValue);
    NSLog(@"value = %f", _slider.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
