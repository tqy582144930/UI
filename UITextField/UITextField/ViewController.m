//
//  ViewController.m
//  UITextField
//
//  Created by tuqiangyao on 2018/7/20.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个文本输入区
    self.textField = [[UITextField alloc] init];
    
    //设定文本输入区的位置和大小
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    //设置textField的内容文字
    self.textField.text = @"用户名";
    
    //设置文字的字体大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    //设置字体颜色
    self.textField.textColor = [UIColor blackColor];
    
    //设置边框的风格
    //UITextBorderStyleRoundedRect：圆角风格
    //UITextBorderStyleLine:线框风格
    //UITextBorderStyleBezel：bezel线框
    //UITextBorderStyleNone：无边框风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault：默认风格
    //UIKeyboardTypeNamePhonePad：字母和数字组合风格
    //UIKeyboardTypeNumberPad：纯数字风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    //提示文字
    //当text属性为空时，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名...";
    
    //是否作为密码输入
    //YES：作为密码处理，圆点加密
    //NO：普通文字，正常显示输入文字
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:self.textField];
    
    //设置代理对象
    self.textField.delegate = self;
}

- (void) textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编译了！");
}

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    self.textField.text = @"";
    NSLog(@"编译输入结束！");
}

//是否可以进行输入
//如果返回值为YES，可以进行输入，默认为YES
//NO：不能输入文字
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

//是否可以结束输入
//如果返回值为YES，可以结束输入，默认为YES
//NO：不能结束输入文字
- (BOOL) textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}

//点击屏幕空白处调用此函数
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使虚拟键盘回收，不再作为第一消息响应者
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
