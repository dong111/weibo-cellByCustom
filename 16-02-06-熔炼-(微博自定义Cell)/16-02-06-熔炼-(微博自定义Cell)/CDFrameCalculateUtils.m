//
//  CDFrameCalculateUtils.m
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/9.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDFrameCalculateUtils.h"

@implementation CDFrameCalculateUtils

+ (CGSize) sizeWithText:(NSString *)text maxSize:(CGSize)maxSize fontSize:(CGFloat)fontSize
{
    CGSize textSize = [text boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName :[UIFont systemFontOfSize:15]} context:nil].size;
    
    return textSize;
}

@end
