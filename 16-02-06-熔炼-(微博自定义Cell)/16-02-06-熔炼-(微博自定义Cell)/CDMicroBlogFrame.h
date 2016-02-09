//
//  CDMicroBlogFrame.h
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/9.
//  Copyright © 2016年 man. All rights reserved.
//
#define CDNameFont 15
#define CDTextFont 14

#import <Foundation/Foundation.h>
#import "CDMicroBlog.h"
#import <CoreGraphics/CoreGraphics.h>

@interface CDMicroBlogFrame : NSObject

@property (nonatomic,strong) CDMicroBlog *microBlog;
@property (nonatomic,assign,readonly) CGRect iconFrame;
@property (nonatomic,assign,readonly) CGRect nameFrame;
@property (nonatomic,assign,readonly) CGRect vipFrame;
@property (nonatomic,assign,readonly) CGRect textFrame;
@property (nonatomic,assign,readonly) CGRect pictureFrame;

@property (nonatomic,assign,readonly) CGFloat rowHeight;

@end
