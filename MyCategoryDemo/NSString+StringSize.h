//
//  NSString+StringSize.h
//  MyCategoryDemo
//
//  Created by apple on 17/3/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (StringSize)

/**  计算文字的Rect */
- (CGSize)sizeWIthFont:(UIFont *)font MaxSize:(CGSize)maxSize;

@end
