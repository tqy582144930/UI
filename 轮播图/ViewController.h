//
//  ViewController.h
//  轮播图
//
//  Created by tuqiangyao on 2018/7/27.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
< UIScrollViewDelegate>
@property (nonatomic,retain) UIScrollView *scrollView;
@property (nonatomic,retain) UIPageControl *pageControl;
@property (nonatomic,strong)NSTimer *timer;

@end

