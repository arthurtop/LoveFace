//
//  UIView+XLZExt.h
//  LoveFace
//
//  Created by jecansoft on 16/3/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

////UIView 的扩展类

@interface UIView (XLZExt)

/**
 * 1. Shortcut for frame.origin.x.
 *        Sets frame.origin.x = originX
 */
@property (nonatomic,assign) CGFloat orightX;


/**
 * 2. Shortcut for frame.origin.y
 *        Sets frame.origin.y = originY
 */
@property (nonatomic,assign) CGFloat orightY;


/**
 * @brief Shortcut for frame.size.width
 *        Sets frame.size.width = width
 */
@property (nonatomic) CGFloat width;

/**
 * @brief Shortcut for frame.size.height
 *        Sets frame.size.height = height
 */
@property (nonatomic) CGFloat height;



/**
 * @brief Shortcut for frame.origin.x + frame.size.width
 *       Sets frame.origin.x = rightX - frame.size.width
 */
@property (nonatomic) CGFloat rightX;


/**
 * @brief Shortcut for frame.origin.y + frame.size.height
 *        Sets frame.origin.y = bottomY - frame.size.height
 */
@property (nonatomic) CGFloat bottomY;



/**
 * @brief Shortcut for center.x
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat centerX;

/**
 * @brief Shortcut for center.y
 *        Sets center.y = centerY
 */
@property (nonatomic) CGFloat centerY;



/**
 * @brief Shortcut for frame.origin
 */
@property (nonatomic) CGPoint origin;

/**
 * @brief Shortcut for frame.size
 */
@property (nonatomic) CGSize size;



/////滑动的距离  tx
@property (nonatomic,assign) CGFloat transformX;

@property (nonatomic,assign) CGFloat transformY;



///< 移除此view上的所有子视图
- (void)removeAllSubviews;









@end
