//
//  ViewController.h
//  UI-步进器和分栏控件
//
//  Created by tuqiangyao on 2018/7/18.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义步进器对象
    //一般是用来按照一定的数值来调整某个数据
    UIStepper* _stepper;
    
    //分栏控制器定义
    UISegmentedControl* _segControl;
}

@property (retain, nonatomic) UIStepper* stepper;
@property (retain, nonatomic) UISegmentedControl* segControl;

@end

