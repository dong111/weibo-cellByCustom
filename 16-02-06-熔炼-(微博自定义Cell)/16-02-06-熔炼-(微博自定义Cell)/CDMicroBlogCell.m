//
//  CDMicroBlogCell.m
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDMicroBlogCell.h"
//类扩展，定义分类
@interface CDMicroBlogCell ()
//定义属性控件
@property (nonatomic,weak) UIImageView *iconView;
@property (nonatomic,weak) UILabel *nameView;
@property (nonatomic,weak) UIImageView *vipView;
@property (nonatomic,weak) UILabel *textView;
@property (nonatomic,weak) UIImageView *pictureView;

@end

@implementation CDMicroBlogCell
////生成可以重用的自定义cell对象方法
+ (instancetype) microBlogCellWithTableView:(UITableView *)tableView
{
    
    NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    return cell;
}


@end
