//
//  UIColor+colorExten.h
//  LoveFace
//
//  Created by jecansoft on 16/3/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (colorExten)
/*!
 * @brief UIColor类扩展，提供根据颜色生成图片方法，添加更多生成颜色的方法
 * @author huangyibiao
 */

///< 根据颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color;

///< 根据颜色、图片大小 生成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


@end
