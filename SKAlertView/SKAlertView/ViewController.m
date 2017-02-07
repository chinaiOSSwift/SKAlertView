//
//  ViewController.m
//  SKAlertView
//
//  Created by SPARKWYY on 2017/2/7.
//  Copyright © 2017年 SKOrganization. All rights reserved.
//

#import "ViewController.h"
#import "SparkAlertView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self createUI];
}

- (void)createUI{
    SparkAlertView * alertView = [SparkAlertView initWithFrame:CGRectMake(0, 0, 300, 150) backGroundColor:[UIColor brownColor] title:@"今天星期二" titleLabelBackGroundColor:[UIColor yellowColor] titleFont:[UIFont systemFontOfSize:19] titleTextAlignment:NSTextAlignmentCenter titleTextColor:[UIColor redColor] messages:@"1.如果没有那29天的少年时光，我不会像今天这样思考 \n 2.“你好，我是David，这是我的父亲Ken，这些是我家人。很高兴认识你。\n 3.2月3日，马云在澳大利亚。 \n 4.他来到了澳大利亚新南威尔士州的纽卡斯尔。" messageLabelBackGroundColor:[UIColor greenColor] messageFont:[UIFont systemFontOfSize:17] messageTextAlignment:NSTextAlignmentLeft messageTextColor:[UIColor purpleColor]];
    alertView.center = self.view.center;
    //alertView.layer.cornerRadius = 5;
    //alertView.clipsToBounds = true;
    [self.view addSubview:alertView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
