//
//  SparkAlertView.h
//  SKAlertView
//
//  Created by SPARKWYY on 2017/1/23.
//  Copyright © 2017年 SKOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
@interface SparkAlertView : UIView

@property (nonatomic, strong) UILabel * titleLabel; //显示标题





+ (instancetype)initWithFrame:(CGRect)frame backGroundColor:(UIColor *)color title:(NSString *)title titleLabelBackGroundColor:(UIColor *) titleLabelBackGroundColor titleFont:(UIFont *)titleFont
           titleTextAlignment:(NSTextAlignment)titleTextAlignment titleTextColor:(UIColor *)titleTextColor messages:(NSString *)message messageLabelBackGroundColor:(UIColor *)messageBackGroundColor messageFont:(UIFont *)messageFont messageTextAlignment:(NSTextAlignment) messageTextAlignment messageTextColor:(UIColor *)messageTextColor;


@end
