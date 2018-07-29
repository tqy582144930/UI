//
//  ViewController.h
//  UISlider和UIProgressView
//
//  Created by tuqiangyao on 2018/7/8.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条对象
    //一般用来表示下载或视频播放进度
    UIProgressView* _progressView;
    
    //滑动条的定义
    //一般用来调整音乐的音量等
    UISlider* _slider;
}

//定义一个进度条属性
@property (retain, nonatomic) UIProgressView* pView;
//定义一个滑动条属性
@property (retain, nonatomic) UISlider* slider;

@end

