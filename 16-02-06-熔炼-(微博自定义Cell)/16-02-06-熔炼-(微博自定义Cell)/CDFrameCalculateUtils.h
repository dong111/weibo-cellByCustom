//
//  CDFrameCalculateUtils.h
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/9.
//  Copyright © 2016年 man. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CDFrameCalculateUtils : NSObject

//计算文本大小
+ (CGSize) sizeWithText:(NSString *)text maxSize:(CGSize)maxSize fontSize:(CGFloat) fontSize;

@end
