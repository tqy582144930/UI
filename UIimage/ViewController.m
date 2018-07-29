//
//  ViewController.m
//  UIimage
//
//  Created by tuqiangyao on 2018/7/21.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIImage* image1 = [UIImage imageNamed:@"17_1.jpg"];
      UIImageView* iView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//
//    iView.image = image1;
//
    
      [self.view addSubview:iView];
//
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 1; i <= 9; i++) {
        NSString *iName = [NSString stringWithFormat:@"17_%d.jpg", i];
        UIImage* image = [UIImage imageNamed:iName];
        
        [array addObject:image];
    }
    
    //将保存图片的数组赋值给iview
    iView.animationImages = array;
    //设置一次动画所需要的时间
    iView.animationDuration = 5;
    //设置重复次数，0，代表无限循环
    iView.animationRepeatCount = 0;
    //开始动画
    [iView startAnimating];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
