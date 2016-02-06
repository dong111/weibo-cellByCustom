//
//  CDMicroBlog.h
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDMicroBlog : UIView

@property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *picture;
@property (nonatomic,assign,getter=isVip) BOOL vip;

- (instancetype) initWithDic:(NSDictionary *)dic;

+ (instancetype) microBlogWithDic:(NSDictionary *)dic;


+ (NSArray *) microBlogsList;

@end
