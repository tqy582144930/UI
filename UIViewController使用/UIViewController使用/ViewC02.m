//
//  ViewC02.m
//  UIViewController使用
//
//  Created by tuqiangyao on 2018/7/5.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewC02.h"

@interface ViewC02 ()

@end

@implementation ViewC02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //控制器二的颜色为橙色
    self.view.backgroundColor = [UIColor orangeColor];
}

//点击当前控制器二的界面屏幕时
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使当前的控制器消失
    //参数一：是否有动画效果
    //参数二：结束后是否需要调用功能block块操作
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
