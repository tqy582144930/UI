//
//  ViewController.m
//  UITextView
//
//  Created by tuqiangyao on 2018/7/22.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextView* textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, 300, 180)];
    textView.text = @"Now is the time for all good developers tocome to serve their country.\n\nNow is the time for all good developers to cometo serve their country.";
    
    textView.textColor = [UIColor blackColor];
    
    textView.font = [UIFont fontWithName:@"Arial" size:18.0];
    
    textView.backgroundColor = [UIColor whiteColor];
    //设置边框
    textView.layer.borderColor = [UIColor grayColor].CGColor;
    textView.layer.borderWidth = 1.0;
    textView.layer.cornerRadius = 5.0;
    
    textView.textAlignment = NSTextAlignmentLeft;
    
    textView.returnKeyType = UIReturnKeyDefault;
    
    textView.keyboardType = UIKeyboardTypeDefault;
    
    textView.scrollEnabled = YES;
    
    textView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    
    textView.editable = YES;
    
    textView.selectable = YES;
    
    textView.selectedRange = NSMakeRange(8, 6);
    
    textView.delegate = self;
    
    [self.view addSubview:textView];
    
//    UILabel* tip = [[UILabel alloc] initWithFrame:CGRectMake(16, 14, 320, 25)];
//
//    tip.text = @"你的意见是我们前进的最大动力，谢谢！";
//
//    tip.font = [UIFont fontWithName:@"Arial" size:16.5f];
//
//    tip.backgroundColor = [UIColor clearColor];
//
//    tip.enabled = NO;
//
//    UILabel* count = [[UILabel alloc] initWithFrame:CGRectMake(270, 170, 35, 20)];
//
//    count.text = @"240";
//
//    count.textAlignment = NSTextAlignmentRight;
//
//    count.font = [UIFont fontWithName:@"Arial" size:15.0f];
//
//    count.backgroundColor = [UIColor clearColor];
//
//    count.enabled = NO;
//
//    [self.view addSubview:tip];
//    [self.view addSubview:count];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if (range.location < 240) {
        return YES;
    } else {
        return NO;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
