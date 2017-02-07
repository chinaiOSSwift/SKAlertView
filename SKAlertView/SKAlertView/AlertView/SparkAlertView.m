//
//  SparkAlertView.m
//  SKAlertView
//
//  Created by SPARKWYY on 2017/1/23.
//  Copyright © 2017年 SKOrganization. All rights reserved.
//

#import "SparkAlertView.h"




@interface SparkAlertView ()

@property (nonatomic, strong) UIView * backView;

@end


@implementation SparkAlertView

// , ,, , ,


/**
 利用massary 自己封装的弹窗
 
 @param frame 弹窗的位置
 @param color 弹窗的背景颜色
 @param title  弹窗的标题
 @param titleFont 弹窗的标题字体大小
 @param titleTextAlignment 弹窗标题字体的对齐方式
 @param titleTextColor 弹窗标题字体颜色
 @param message 弹窗信息
 @param messageFont 弹窗信息 字体大小
 @param messageTextAlignment 弹窗信息对齐方式
 @param messageTextColor 弹窗信息字体颜色
 */
+ (instancetype)initWithFrame:(CGRect)frame backGroundColor:(UIColor *)color title:(NSString *)title titleLabelBackGroundColor:(UIColor *) titleLabelBackGroundColor titleFont:(UIFont *)titleFont titleTextAlignment:(NSTextAlignment)titleTextAlignment titleTextColor:(UIColor *)titleTextColor messages:(NSString *)message messageLabelBackGroundColor:(UIColor *)messageBackGroundColor messageFont:(UIFont *)messageFont messageTextAlignment:(NSTextAlignment)messageTextAlignment messageTextColor:(UIColor *)messageTextColor{
    
    SparkAlertView * alertView = [[SparkAlertView alloc]initWithFrame:frame];
    if (color == nil) {
        alertView.backgroundColor = [UIColor whiteColor]; // 默认是白色背景
    }else{
        alertView.backgroundColor = color;
    }
    
    if (title == nil || [title isEqualToString:@""]) { // 没有标题
        
        if (message == nil || [message isEqualToString:@""]) { // 没有副标题
            
        }else{
            UILabel * messageLabel = [[UILabel alloc]init];
            messageLabel.numberOfLines = 0;
            [alertView addSubview:messageLabel];
            messageLabel.text = message;
            messageLabel.backgroundColor = messageBackGroundColor;
            CGFloat messageLabelHeight = 0;
            // 副标题默认字号为 15
            if (messageFont == nil) {
                messageLabel.font = [UIFont systemFontOfSize:15];
                messageLabelHeight = [message boundingRectWithSize:CGSizeMake(CGRectGetWidth(frame), 99999) options: NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} context:nil].size.height + 8;
            }else{
                messageLabel.font = messageFont;
                messageLabelHeight = [message boundingRectWithSize:CGSizeMake(CGRectGetWidth(frame), 99999) options: NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:messageTextColor} context:nil].size.height + 8;
            }
            
            // 副标题对齐方式, 默认居中
            switch (messageTextAlignment) {
                case NSTextAlignmentLeft:{
                    messageLabel.textAlignment = NSTextAlignmentLeft;
                }
                    break;
                case NSTextAlignmentRight:{
                    messageLabel.textAlignment = NSTextAlignmentRight;
                }
                    break;
                    
                default:{
                    messageLabel.textAlignment = NSTextAlignmentCenter;
                }
                    break;
            }
            // 副标题默认字体颜色 为 灰色
            if (messageTextColor == nil) {
                messageLabel.textColor = [UIColor darkGrayColor];
            }else{
                messageLabel.textColor = messageTextColor;
            }
            // 添加约束等信息
            [messageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(alertView.mas_top).with.offset(0);
                make.left.mas_equalTo(alertView.mas_left).with.offset(0);
                make.right.mas_equalTo(alertView.mas_right).with.offset(0);
                make.height.mas_equalTo(messageLabelHeight);
            }];
        }
        
        
        
        
    }else{ // 有标题
        UILabel * titleLabel = [[UILabel alloc]init];
        titleLabel.numberOfLines = 0;
        titleLabel.backgroundColor = titleLabelBackGroundColor;
        titleLabel.text = title;
        [alertView addSubview:titleLabel];
        CGFloat titleHeight = 0;
        if (titleFont == nil) { // 标题字体为空 默认为15号字
            titleLabel.font = [UIFont systemFontOfSize:15];
            titleHeight = [title boundingRectWithSize:CGSizeMake(CGRectGetWidth(frame), 99999) options: NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size.height;
        }else{
            titleLabel.font = titleFont;
            titleHeight = [title boundingRectWithSize:CGSizeMake(CGRectGetWidth(frame), 99999) options: NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:titleFont} context:nil].size.height;
            
        }
        //标题字体对齐方式, 默认居中
        switch (titleTextAlignment) {
            case NSTextAlignmentLeft:{
                titleLabel.textAlignment = NSTextAlignmentLeft;
                
            }
                break;
            case NSTextAlignmentRight:{
                titleLabel.textAlignment = NSTextAlignmentRight;
            }
                break;
            default:{
                titleLabel.textAlignment = NSTextAlignmentCenter;
            }
                break;
        }
        
        // 标题字体颜色, 默认灰色
        if (titleTextColor == nil) {
            titleLabel.textColor = [UIColor darkGrayColor];
        }else{
            titleLabel.textColor = titleTextColor;
        }
        // 添加约束
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(alertView.mas_top).with.offset(0);
            make.left.mas_equalTo(alertView.mas_left).with.offset(0);
            make.right.mas_equalTo(alertView.mas_right).with.offset(0);
            make.height.mas_equalTo(titleHeight);
        }];
        // 判断副标题是否存在
        if (message == nil || [message isEqualToString:@""]) { // 没有副标题
            
        }else{
            UILabel * messageLabel = [[UILabel alloc]init];
            messageLabel.numberOfLines = 0;
            [alertView addSubview:messageLabel];
            messageLabel.text = message;
            messageLabel.backgroundColor = messageBackGroundColor;
            CGFloat messageLabelHeight = 0;
            // 副标题默认字号为 15
            if (messageFont == nil) {
                messageLabel.font = [UIFont systemFontOfSize:13];
                messageLabelHeight = [message boundingRectWithSize:CGSizeMake(CGRectGetWidth(frame), 99999) options: NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} context:nil].size.height + 8;
            }else{
                messageLabel.font = messageFont;
                messageLabelHeight = [message boundingRectWithSize:CGSizeMake(CGRectGetWidth(frame), 99999) options: NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:messageFont} context:nil].size.height + 8;
            }
            
            // 副标题对齐方式, 默认居中
            switch (messageTextAlignment) {
                case NSTextAlignmentLeft:{
                    messageLabel.textAlignment = NSTextAlignmentLeft;
                }
                    break;
                case NSTextAlignmentRight:{
                    messageLabel.textAlignment = NSTextAlignmentRight;
                }
                    break;
                    
                default:{
                    messageLabel.textAlignment = NSTextAlignmentCenter;
                }
                    break;
            }
            // 副标题默认字体颜色 为 灰色
            if (messageTextColor == nil) {
                messageLabel.textColor = [UIColor darkGrayColor];
            }else{
                messageLabel.textColor = messageTextColor;
            }
            // 添加约束等信息
            [messageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(titleLabel.mas_bottom).with.offset(5);
                make.left.mas_equalTo(alertView.mas_left).with.offset(0);
                make.right.mas_equalTo(alertView.mas_right).with.offset(0);
                make.height.mas_equalTo(messageLabelHeight);
            }];
        }
        
        
    }
    
    
    
    return alertView;
    
    
    
}



@end







































