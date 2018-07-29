//
//  VCRoot.h
//  UITabBarController
//
//  Created by tuqiangyao on 2018/7/23.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController
<UITableViewDataSource,
UITableViewDelegate>
{
    UITableView*_tableView;
}
@end
