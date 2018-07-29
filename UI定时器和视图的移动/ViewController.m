//
//  ViewController.m
//  UI定时器和视图的移动
//
//  Created by tuqiangyao on 2018/7/5.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量同步
@synthesize timeView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //启动定时器按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    //停止定时器按钮
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnStop];
    
    UIView* view = [[UIView alloc] init];
    
    view.frame = CGRectMake(0, 0, 80, 80);
    
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    
    //设置view的标签值
    //通过父亲视图对象以及view的标签值可以获得相应的视图对象
    view.tag = 101;
}

//按下开始按钮函数
- (void)pressStart
{
    //NSTimer的类方法创建一个定时器并且启动这个定时器
    //参数一：每隔多长时间调用定时器函数，以秒为单位的整数
    //参数二：表示实现定时器函数的对象
    //参数三：定时器函数对象
    //参数四：可以传入定时器函数中一个参数，无参数可以传nil
    //参数五：定时器是否重复操作YES为重复，NO只完成一次函数调用
    //返回值为一个新建好的定时器对象
    _timerView = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer:) userInfo:@"小明" repeats:YES];
}

//定时器函数
//可以讲定时器本身作为参数传入
- (void) updateTimer:(NSTimer*) timer
{
    NSLog(@"test！！ name = %@", timer.userInfo);
    
    //最好tag从100开始
    UIView* view = [self.view viewWithTag:101];
    
    view.frame = CGRectMake(view.frame.origin.x+5, view.frame.origin.y+5, 80, 80);
    
}
//按下停止按钮时调用
- (void)pressStop
{
    if (_timerView != nil) {
        //停止定时器
        [_timerView invalidate];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
