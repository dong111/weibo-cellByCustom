//
//  CDMicroBlogCell.m
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#define CDNameFont 15
#define CDTextFont 14

#import "CDMicroBlogCell.h"
#import "CDMicroBlog.h"
#import "CDFrameCalculateUtils.h"
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
        self.nameView.font = [UIFont systemFontOfSize:CDNameFont];
        //会员
        UIImageView *vipView = [[UIImageView alloc]init];
        [self.contentView addSubview:vipView];
        self.vipView = vipView;
        //微博内容
        UILabel *textView = [[UILabel alloc]init];
        [self.contentView addSubview:textView];
        self.textView = textView;
        self.textView.font = [UIFont systemFontOfSize:CDTextFont];
        self.textView.numberOfLines = 0;
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
    [self setSubViewsContent];
    //设置子控件的frame
    [self setSubViewsFrame];
    
}

//设置子控件显示内容
- (void)setSubViewsContent
{
    if (self.microBlog==nil) {
        return;
    }
    self.iconView.image = [UIImage imageNamed:self.microBlog.icon];
    self.nameView.text = self.microBlog.name;
    self.vipView.image = [UIImage imageNamed:@"vip"];
    if (!self.microBlog.isVip) {
        self.nameView.textColor = [UIColor blackColor];
        self.vipView.hidden = YES;
    }else{
        self.nameView.textColor = [UIColor redColor];
        self.vipView.hidden = NO;
    }
    self.textView.text = self.microBlog.text;
    if (self.microBlog.picture!=nil) {
        self.pictureView.image = [UIImage imageNamed:self.microBlog.picture];
    }
    
    
}


//设置子控件的frame
- (void) setSubViewsFrame
{
    //定义参数间距
    CGFloat margin = 10;
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    //图像
    CGFloat iconX = margin;
    CGFloat iconY = margin;
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    CGRect iconFrame =  CGRectMake(iconX, iconY, iconW, iconH);
    self.iconView.frame = iconFrame;
    //设置名称
    CGSize nameSize = [CDFrameCalculateUtils sizeWithText:self.microBlog.name maxSize:maxSize fontSize:CDNameFont];
    CGFloat nameX = CGRectGetMaxX(iconFrame)+margin;
    CGFloat nameY = iconY+(iconW - nameSize.height)/2;
    CGRect nameFrame = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    self.nameView.frame = nameFrame;
    //vip头像设置
    CGFloat vipX = CGRectGetMaxX(nameFrame)+margin;
    CGFloat vipY = nameY;
    CGFloat vipW = 14;
    CGFloat vipH = 14;
    CGRect vipFrame = CGRectMake(vipX, vipY, vipW, vipH);
    self.vipView.frame = vipFrame;
    //微博内容大小设置
    CGSize textSize = [CDFrameCalculateUtils sizeWithText:self.microBlog.text maxSize:CGSizeMake(355, MAXFLOAT) fontSize:CDTextFont];
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxY(iconFrame)+margin;
    CGRect textFrame =  CGRectMake(textX, textY, textSize.width, textSize.height);
    self.textView.frame = textFrame;
    //微博图片设置
    if (self.pictureView!=nil) {
        CGFloat picX = iconX;
        CGFloat picY = CGRectGetMaxY(textFrame)+margin;
        CGFloat picW = 100;
        CGFloat picH = 100;
        CGRect picFrame = CGRectMake(picX, picY, picW, picH);
        self.pictureView.frame = picFrame;
    }

    
}



@end
