//
//  ViewController.h
//  UI定时器和视图的移动
//
//  Created by tuqiangyao on 2018/7/5.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //声明定义一个定时器对象
    //可以在每隔固定的时间发送一个消息
    //通过此消息调用相应的时间函数
    //通过此函数可以在固定时间段来完成一个根据时间间隔的任务
    NSTimer* _timerView;
}

//定时器的属性对象
@property (retain, nonatomic) NSTimer* timeView;
@end

