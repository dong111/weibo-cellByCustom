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
    CDMicroBlogCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell = [[CDMicroBlogCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    return cell;
}

//重写构造方法,初始化（创建自己定义cell内部的子控件）
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //创建子控件
        //头像
        UIImageView *iconView = [[UIImageView alloc]init];
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        //名称
        UILabel *nameView = [[UILabel alloc]init];
        [self.contentView addSubview:nameView];
        self.nameView = nameView;
        //会员
        UIImageView *vipView = [[UIImageView alloc]init];
        [self.contentView addSubview:vipView];
        self.vipView = vipView;
        //微博内容
        UILabel *textView = [[UILabel alloc]init];
        [self.contentView addSubview:textView];
        self.textView = textView;
        //微博图片
        UIImageView *pictureView =  [[UIImageView alloc] init];
        [self.contentView addSubview:pictureView];
        self.pictureView = pictureView;
        
    }
    
    return self;
}
//重写属性setter方法,设置子控件的值
- (void)setMicroBlog:(CDMicroBlog *)microBlog
{
    _microBlog = microBlog;
    
    //设置子控件显示内容
    
    //设置子控件的frame
    
}

//设置子控件显示内容



//设置子控件的frame

@end
