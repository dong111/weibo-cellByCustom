//
//  CDMicroBlog.m
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDMicroBlog.h"

@implementation CDMicroBlog

- (instancetype) initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+ (instancetype) microBlogWithDic:(NSDictionary *)dic{
    return [[CDMicroBlog alloc] initWithDic:dic];
}


+ (NSArray *) microBlogsList{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"microblog" ofType:@"plist"];
    
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *tmpArray  = [NSMutableArray array];
    
    for (NSDictionary *dic in dicArray) {
        CDMicroBlog *microBlog = [[CDMicroBlog alloc] initWithDic:dic];
        [tmpArray addObject:microBlog];
    }
    
    return tmpArray;
}


@end
