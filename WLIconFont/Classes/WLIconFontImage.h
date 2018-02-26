//
//  WLIconFontImage.h
//  IconFont
//
//  Created by 刘光强 on 2018/2/26.
//  Copyright © 2018年 刘光强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WLIconFontImage : NSObject

+ (UIImage *)imageWithName:(NSString *)iconName size:(CGFloat)iconSize color:(UIColor *)iconColor;

+ (UIImage *)imageWithName:(NSString *)iconName size:(CGFloat)iconSize color:(UIColor *)iconColor insets:(UIEdgeInsets)iconInsets;

+ (UIImage *)imageWithName:(NSString *)iconName size:(CGFloat)iconSize color:(UIColor *)iconColor backgroundColor:(UIColor *)iconBgColor;

+ (UIImage *)imageWithName:(NSString *)iconName size:(CGFloat)iconSize color:(UIColor *)iconColor insets:(UIEdgeInsets)iconInsets backgroundColor:(UIColor *)iconBgColor;

+ (NSString *)matchIconCodeWithName:(NSString *)iconName;

@end
