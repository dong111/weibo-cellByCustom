//
//  CDMicroBlogFrame.m
//  16-02-06-熔炼-(微博自定义Cell)
//该类用来辅助计算Blog的Frame
//
//  Created by 陈栋 on 16/2/9.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDMicroBlogFrame.h"
#import "CDFrameCalculateUtils.h"


@implementation CDMicroBlogFrame


//重写这是microBlog的setter方法，并且在这个方法中计算出其它frame属性 和行高
- (void)setMicroBlog:(CDMicroBlog *)microBlog
{
    _microBlog = microBlog;
    
    //定义参数间距
    CGFloat margin = 10;
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    //图像
    CGFloat iconX = margin;
    CGFloat iconY = margin;
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    CGRect iconFrame =  CGRectMake(iconX, iconY, iconW, iconH);
    _iconFrame = iconFrame;
    //设置名称
    CGSize nameSize = [CDFrameCalculateUtils sizeWithText:self.microBlog.name maxSize:maxSize fontSize:CDNameFont];
    CGFloat nameX = CGRectGetMaxX(_iconFrame)+margin;
    CGFloat nameY = iconY+(iconW - nameSize.height)/2;
    CGRect nameFrame = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    _nameFrame = nameFrame;
    //vip头像设置
    CGFloat vipX = CGRectGetMaxX(nameFrame)+margin;
    CGFloat vipY = nameY;
    CGFloat vipW = 14;
    CGFloat vipH = 14;
    CGRect vipFrame = CGRectMake(vipX, vipY, vipW, vipH);
    _vipFrame = vipFrame;
    //微博内容大小设置
    CGSize textSize = [CDFrameCalculateUtils sizeWithText:self.microBlog.text maxSize:CGSizeMake(355, MAXFLOAT) fontSize:CDTextFont];
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxY(iconFrame)+margin;
//    CGRect textFrame =  CGRectMake(textX, textY, textSize.width, textSize.height);
    CGRect textFrame = (CGRect){{textX,textY},textSize};
    _textFrame = textFrame;
    //微博图片设置
    if (self.microBlog.picture!=nil) {
        CGFloat picX = iconX;
        CGFloat picY = CGRectGetMaxY(textFrame)+margin;
        CGFloat picW = 100;
        CGFloat picH = 100;
        CGRect picFrame = CGRectMake(picX, picY, picW, picH);
        _pictureFrame = picFrame;
        _rowHeight = CGRectGetMaxY(picFrame);
    }else{
        _rowHeight = CGRectGetMaxY(textFrame);
    }
}


@end
