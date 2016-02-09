//
//  CDMicroBlogCell.h
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CDMicroBlogFrame;

@interface CDMicroBlogCell : UITableViewCell

@property (nonatomic,strong) CDMicroBlogFrame *microBlogFrame;

//生成可以重用的自定义cell对象方法
+ (instancetype) microBlogCellWithTableView:(UITableView *)tableView;

@end
