//
//  ViewController.m
//  轮播图
//
//  Created by tuqiangyao on 2018/7/27.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)dealloc{
    self.scrollView = nil;
    self.pageControl = nil;
    //[super dealloc];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self layout];
}

-(void)layout{
    //布局ScrollView
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(20,40, 280, 130)];
    [self.view addSubview:_scrollView];
    
    //布局pagecontrol
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(100, 140, 200, 30)];
    
    [self.view addSubview:_pageControl];
    
    int count = 5;
    CGSize size = self.scrollView.frame.size;
    //1 动态生成5个imageView
    for (int i = 0; i < count; i++) {
        //
        UIImageView *iconView = [[UIImageView alloc] init];
        [self.scrollView addSubview:iconView];
        
        NSString *imgName = [NSString stringWithFormat:@"%d.jpg",i+1];
        iconView.image = [UIImage imageNamed:imgName];
        
        CGFloat x = i * size.width;
        //frame
        iconView.frame = CGRectMake(x, 0, size.width, size.height);
    }
    //2 设置滚动范围
    self.scrollView.contentSize = CGSizeMake(count * size.width, 0);
    self.scrollView.showsHorizontalScrollIndicator = NO;
    //3 设置分页
    self.scrollView.pagingEnabled = YES;
    
    //4 设置pageControl
    self.pageControl.numberOfPages = count;
    self.pageControl.currentPageIndicatorTintColor = [UIColor blueColor];
    self.pageControl.pageIndicatorTintColor = [UIColor blackColor];
    //5 设置scrollView的代理
    self.scrollView.delegate = self;
    //6 添加定时器
    [self addTimerTask];
    
    //添加测试View  当点击滑动textView时候 看看图片是否滑动  若是滑动则多线程成功 若是停止则是单线程
    UITextView *testTextView = [[UITextView alloc]initWithFrame:CGRectMake(60, 260, 200, 250)];
    testTextView.text = @"添加测试View  当滑动textView时候 看看图片是否滑动  若是滑动则多线程成功 若是停止则是单线程 主要原因是消息机制里 默认属性NSDefaultRunLoopMode是单线程用的 是另外一个属性NSRunLoopCommonModes能够在多线程中起作用";
    testTextView.font = [UIFont fontWithName:@"Arial" size:25];
    [self.view addSubview:testTextView];
}

//把定时器封装起来 方便调用
-(void)addTimerTask{
    //6 定时器
    NSTimer *timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    
    self.timer = timer;
    
    //消息循环
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    // 默认是NSDefaultRunLoopMode  但是另外一个属性NSRunLoopCommonModes 能够在多线程中起作用
    [runloop addTimer:timer forMode:NSDefaultRunLoopMode];
    
    //立即执行定时器的方法  fire 是定时器自带的方法
    // [timer fire];
}

-(void)nextImage{
    //当前页码
    NSInteger page = self.pageControl.currentPage;
    //如果是到达最后一张
    if (page == self.pageControl.numberOfPages - 1) {
        page = 0;
        //设置偏移量  当到达最后一张时候 切换到第一张  不产生从最后一张倒回第一张效果
        _scrollView.contentOffset = CGPointMake(0, 0);
        [_scrollView setContentOffset:_scrollView.contentOffset animated:YES];
    }else{
        page++;
    }
    //  self.scrollView setContentOffset:(CGPoint) animated:(BOOL)
    
    CGFloat offsetX = page * self.scrollView.frame.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
    }];
}

//正在滚动的时候
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //   (offset.x + 100/2)/100
    int page = (scrollView.contentOffset.x + scrollView.frame.size.width / 2)/ scrollView.frame.size.width;
    self.pageControl.currentPage = page;
}
//当你点击图片按住不动的时候 把定时器停止
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    //停止定时器
    [self.timer invalidate];
}
//当不再按图片 也就是松开的时候 立马调用计时器方法
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    //用scheduledTimerWithTimeInterval 创建定时器是用的系统默认的方法 当遇见多线程时候会出现问题
    //    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    //所以还是调用上面创建的定时器方法
    [self addTimerTask];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
