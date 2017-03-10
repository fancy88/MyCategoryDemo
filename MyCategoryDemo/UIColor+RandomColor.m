//
//  UIColor+RandomColor.m
//  MyCategoryDemo
//
//  Created by apple on 17/3/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

/* 生成随机颜色 */
+ (UIColor *)RandomColor{
    return [UIColor colorWithRed: arc4random()%256/255.0 green: arc4random()%256/255.0 blue: arc4random()%256/255.0 alpha:1.0];
}

@end
