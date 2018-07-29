//
//  VCRoot.m
//  UITabBarController
//
//  Created by tuqiangyao on 2018/7/23.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"账号";
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    self.navigationItem.rightBarButtonItem = rightBtn;
}

//获取组数
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 6;
}

//获取每组元素个数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray* row = [NSArray arrayWithObjects:@1, @1, @3, @8, @2, @1, nil];
    
    return [[row objectAtIndex:section] integerValue];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:str];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    
    //设置名称
    NSArray* array1 = [NSArray arrayWithObjects:@"涂强尧", nil];
    NSArray* array2 = [NSArray arrayWithObjects:@"我的消息", nil];
    NSArray* array3 = [NSArray arrayWithObjects:@"会员中心",@"商城", @"在线听歌免费",nil];
    NSArray* array4 = [NSArray arrayWithObjects:@"设置", @"扫一扫", @"个性换肤", @"夜间模式", @"定时关闭", @"音乐闹钟", @"驾驶模式", @"优惠券",nil];
    NSArray* array5 = [NSArray arrayWithObjects:@"分享网易云音乐", @"关于", nil];
    NSArray* array6 = [NSArray arrayWithObjects:@"退出登录", nil];
    
    NSArray* array = [NSArray arrayWithObjects:array1,array2,array3,array4,array5,array6, nil];
    cell.textLabel.text = [[array objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    //设置图标
    NSString* str1 = [NSString stringWithFormat:@"1_1.jpg"];
    NSString* str2 = [NSString stringWithFormat:@"2.1"];
    NSString* str3 = [NSString stringWithFormat:@"3.1"];
    NSString* str4 = [NSString stringWithFormat:@"3.2"];
    NSString* str5 = [NSString stringWithFormat:@"3.3"];
    NSString* str6 = [NSString stringWithFormat:@"4.1"];
    NSString* str7 = [NSString stringWithFormat:@"4.2"];
    NSString* str8 = [NSString stringWithFormat:@"4.3"];
    NSString* str9 = [NSString stringWithFormat:@"4.4"];
    NSString* str10 = [NSString stringWithFormat:@"4.5"];
    NSString* str11 = [NSString stringWithFormat:@"4.6"];
    NSString* str12 = [NSString stringWithFormat:@"4.7"];
    NSString* str13 = [NSString stringWithFormat:@"4.8"];
    NSString* str14 = [NSString stringWithFormat:@"4.8"];
    NSString* str15 = [NSString stringWithFormat:@"5.1"];
    NSString* str16 = [NSString stringWithFormat:@"5.2"];
    
    NSArray* sec1 = [NSArray arrayWithObjects:str1, nil];
    NSArray* sec2 = [NSArray arrayWithObjects:str2, nil];
    NSArray* sec3 = [NSArray arrayWithObjects:str3, str4,str5,nil];
    NSArray* sec4 = [NSArray arrayWithObjects:str6, str7,str8,str9,str10,str11,str12,str13,str14, nil];
    NSArray* sec5 = [NSArray arrayWithObjects:str15, str16, nil];
    
    NSArray* sec = [NSArray arrayWithObjects:sec1, sec2, sec3, sec4, sec5, nil];
    
    if (indexPath.section == 5) {
        cell.imageView.image = nil;
        return cell;
    } else {
        cell.imageView.image = [UIImage imageNamed:[[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    }
    
    //调整图标的大小
    if (indexPath.section == 0) {
        CGSize itemSize = CGSizeMake(60, 60);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    } else {
        CGSize itemSize = CGSizeMake(35, 35);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    
    
    
    
    return cell;
}
//获取组的头部高度
- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}
//获取尾部高度
- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}

- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 120;
    } else {
        return 60;
    }
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
