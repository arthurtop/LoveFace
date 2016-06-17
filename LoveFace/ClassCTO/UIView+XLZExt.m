//
//  UIView+XLZExt.m
//  LoveFace
//
//  Created by jecansoft on 16/3/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "UIView+XLZExt.h"

@implementation UIView (XLZExt)

/////////orightX
- (CGFloat)orightX{
    return self.frame.origin.x;
}

- (void)setOrightX:(CGFloat)orightX{
    CGRect frame = self.frame;
    frame.origin.x = orightX;
    self.frame = frame;
    
    return;
}


/////////orightY
- (CGFloat)orightY{
    return self.frame.origin.y;
}

- (void)setOrightY:(CGFloat)orightY{
    CGRect frame = self.frame;
    frame.origin.y = orightY;
    self.frame = frame;
    
    return;
}


/////////height  width
- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    return;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    return;
    
}

////////////
- (CGFloat)rightX{
    return self.orightX + self.width;
}

- (void)setRightX:(CGFloat)rightX{
    CGRect frame = self.frame;
    frame.origin.x = rightX - self.width;
    self.frame = frame;
    return;
    
}


- (CGFloat)bottomY{
    return self.orightY + self.height;
}

- (void)setBottomY:(CGFloat)bottomY{
    CGRect frame = self.frame;
    frame.origin.y = bottomY - self.height;
    self.frame = frame;
    return;
}
            


/////////  center
- (CGFloat)centerX{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX{
    self.center = CGPointMake(centerX, self.center.y);
    return;
}



- (CGFloat)centerY{
    return  self.center.y;
}

- (void)setCenterY:(CGFloat)centerY{
    self.center = CGPointMake(self.center.x, centerY);
    return;
}



///////size   oright
- (CGSize)size{
    return self.frame.size;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
    return;
}

- (CGPoint)origin{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
    return;
}


///////
- (CGFloat)transformX{
    return self.transform.tx;
}

- (void)setTransformX:(CGFloat)transformX{
    CGAffineTransform transform = self.transform;
    transform.tx = transformX;
    
    self.transform = transform;
    return;
}


- (CGFloat)transformY{
    return self.transform.ty;
}

- (void)setTransformY:(CGFloat)transformY{
    CGAffineTransform transform = self.transform;
    transform.ty = transformY;
    self.transform = transform;
    
    return;
}


///////移除View上的所有子view
- (void)removeAllSubviews{
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
    return;
}



@end











