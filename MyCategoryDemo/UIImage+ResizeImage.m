//
//  UIImage+ResizeImage.m
//  MyCategoryDemo
//
//  Created by apple on 17/3/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "UIImage+ResizeImage.h"

@implementation UIImage (ResizeImage)

/**   生成一个可以被拉伸的图片*/
+(UIImage *)imageWithString:(NSString *)string{
    // 方法一：
    UIImage *image = [UIImage imageNamed:string];
    CGFloat W = image.size.width * 0.5;
    CGFloat H = image.size.height * 0.5;
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(H, W, H, W)];
}

@end
