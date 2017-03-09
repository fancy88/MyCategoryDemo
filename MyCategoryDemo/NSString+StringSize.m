//
//  NSString+StringSize.m
//  MyCategoryDemo
//
//  Created by apple on 17/3/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "NSString+StringSize.h"

@implementation NSString (StringSize)

/**  计算文字的Rect */
- (CGSize)sizeWIthFont:(UIFont *)font MaxSize:(CGSize)maxSize{
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
}

@end
