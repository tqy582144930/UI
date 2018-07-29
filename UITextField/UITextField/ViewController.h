//
//  ViewController.h
//  UITextField
//
//  Created by tuqiangyao on 2018/7/20.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    //定义一个textField
    //文本输入框
    //例如用户名，密码等需要输入文本文字的内容区域
    //只能输入单行文本，不能输入和显示多行
    UITextField *_textField;
}

//定义属性
@property (retain, nonatomic) UITextField* textField;

@end

