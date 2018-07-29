//
//  main.m
//  UIViewController基础
//
//  Created by tuqiangyao on 2018/7/4.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//整个app程序的主函数，入口函数
int main(int argc, char * argv[]) {
    //自动内存释放池
    @autoreleasepool {
        //UIkit框架结构的启动函数
        //参数一：argc，启动时带有参数的个数
        //参数二：argv，参数列表
        //参数三：nil，要求传入主框架类名，如果参数为nil，系统会自动用默认的框架类作为主框架类名
        //参数四：主框架的代理类对象名字
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
